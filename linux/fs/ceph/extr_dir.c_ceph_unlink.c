
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct dentry {int i_sb; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {int r_num_caps; TYPE_2__ r_reply_info; int r_inode_drop; int r_dentry_unless; int r_dentry_drop; int r_req_flags; struct inode* r_parent; int r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int is_dentry; } ;


 int CEPH_CAP_FILE_EXCL ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_MDS_OP_RMDIR ;
 int CEPH_MDS_OP_RMSNAP ;
 int CEPH_MDS_OP_UNLINK ;
 int CEPH_MDS_R_PARENT_LOCKED ;
 scalar_t__ CEPH_NOSNAP ;
 scalar_t__ CEPH_SNAPDIR ;
 int EROFS ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int USE_AUTH_MDS ;
 int ceph_drop_caps_for_unlink (struct inode*) ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int d_delete (struct inode*) ;
 struct inode* d_inode (struct inode*) ;
 scalar_t__ d_is_dir (struct inode*) ;
 int dget (struct inode*) ;
 int dout (char*,struct inode*,struct inode*,struct inode*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ceph_unlink(struct inode *dir, struct dentry *dentry)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(dir->i_sb);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct inode *inode = d_inode(dentry);
 struct ceph_mds_request *req;
 int err = -EROFS;
 int op;

 if (ceph_snap(dir) == CEPH_SNAPDIR) {

  dout("rmsnap dir %p '%pd' dn %p\n", dir, dentry, dentry);
  op = CEPH_MDS_OP_RMSNAP;
 } else if (ceph_snap(dir) == CEPH_NOSNAP) {
  dout("unlink/rmdir dir %p dn %p inode %p\n",
       dir, dentry, inode);
  op = d_is_dir(dentry) ?
   CEPH_MDS_OP_RMDIR : CEPH_MDS_OP_UNLINK;
 } else
  goto out;
 req = ceph_mdsc_create_request(mdsc, op, USE_AUTH_MDS);
 if (IS_ERR(req)) {
  err = PTR_ERR(req);
  goto out;
 }
 req->r_dentry = dget(dentry);
 req->r_num_caps = 2;
 req->r_parent = dir;
 set_bit(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
 req->r_dentry_drop = CEPH_CAP_FILE_SHARED;
 req->r_dentry_unless = CEPH_CAP_FILE_EXCL;
 req->r_inode_drop = ceph_drop_caps_for_unlink(inode);
 err = ceph_mdsc_do_request(mdsc, dir, req);
 if (!err && !req->r_reply_info.head->is_dentry)
  d_delete(dentry);
 ceph_mdsc_put_request(req);
out:
 return err;
}
