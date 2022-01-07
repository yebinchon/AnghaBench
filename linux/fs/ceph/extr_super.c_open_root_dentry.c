
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef char const dentry ;
struct TYPE_9__ {int mask; } ;
struct TYPE_10__ {TYPE_4__ getattr; } ;
struct TYPE_6__ {int snap; int ino; } ;
struct ceph_mds_request {unsigned long r_started; int r_num_caps; struct inode* r_target_inode; TYPE_5__ r_args; int r_timeout; TYPE_1__ r_ino1; int r_path1; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {TYPE_3__* client; struct ceph_mds_client* mdsc; } ;
struct TYPE_8__ {TYPE_2__* options; } ;
struct TYPE_7__ {int mount_timeout; } ;


 int CEPH_INO_ROOT ;
 int CEPH_MDS_OP_GETATTR ;
 int CEPH_NOSNAP ;
 int CEPH_STAT_CAP_INODE ;
 int ENOMEM ;
 char const* ERR_CAST (struct ceph_mds_request*) ;
 char* ERR_PTR (int) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int USE_ANY_MDS ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int ,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,int *,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 int cpu_to_le32 (int ) ;
 char* d_make_root (struct inode*) ;
 int dout (char*,...) ;
 int kstrdup (char const*,int ) ;

__attribute__((used)) static struct dentry *open_root_dentry(struct ceph_fs_client *fsc,
           const char *path,
           unsigned long started)
{
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_mds_request *req = ((void*)0);
 int err;
 struct dentry *root;


 dout("open_root_inode opening '%s'\n", path);
 req = ceph_mdsc_create_request(mdsc, CEPH_MDS_OP_GETATTR, USE_ANY_MDS);
 if (IS_ERR(req))
  return ERR_CAST(req);
 req->r_path1 = kstrdup(path, GFP_NOFS);
 if (!req->r_path1) {
  root = ERR_PTR(-ENOMEM);
  goto out;
 }

 req->r_ino1.ino = CEPH_INO_ROOT;
 req->r_ino1.snap = CEPH_NOSNAP;
 req->r_started = started;
 req->r_timeout = fsc->client->options->mount_timeout;
 req->r_args.getattr.mask = cpu_to_le32(CEPH_STAT_CAP_INODE);
 req->r_num_caps = 2;
 err = ceph_mdsc_do_request(mdsc, ((void*)0), req);
 if (err == 0) {
  struct inode *inode = req->r_target_inode;
  req->r_target_inode = ((void*)0);
  dout("open_root_inode success\n");
  root = d_make_root(inode);
  if (!root) {
   root = ERR_PTR(-ENOMEM);
   goto out;
  }
  dout("open_root_inode success, root dentry is %p\n", root);
 } else {
  root = ERR_PTR(err);
 }
out:
 ceph_mdsc_put_request(req);
 return root;
}
