
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {int r_num_caps; int r_old_inode_drop; TYPE_2__ r_reply_info; int r_dentry_unless; int r_dentry_drop; int r_req_flags; struct inode* r_parent; void* r_old_dentry; void* r_dentry; } ;
struct ceph_mds_client {int dummy; } ;
struct ceph_fs_client {struct ceph_mds_client* mdsc; } ;
struct TYPE_3__ {int is_dentry; } ;


 int CEPH_CAP_FILE_EXCL ;
 int CEPH_CAP_FILE_SHARED ;
 int CEPH_CAP_LINK_EXCL ;
 int CEPH_CAP_LINK_SHARED ;
 int CEPH_MDS_OP_LINK ;
 int CEPH_MDS_R_PARENT_LOCKED ;
 scalar_t__ CEPH_NOSNAP ;
 int EROFS ;
 scalar_t__ IS_ERR (struct ceph_mds_request*) ;
 int PTR_ERR (struct ceph_mds_request*) ;
 int USE_AUTH_MDS ;
 struct ceph_mds_request* ceph_mdsc_create_request (struct ceph_mds_client*,int ,int ) ;
 int ceph_mdsc_do_request (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ;
 int ceph_mdsc_put_request (struct ceph_mds_request*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,int ) ;
 void* dget (struct dentry*) ;
 int dout (char*,struct inode*,struct dentry*,struct dentry*) ;
 int ihold (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int ceph_link(struct dentry *old_dentry, struct inode *dir,
       struct dentry *dentry)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(dir->i_sb);
 struct ceph_mds_client *mdsc = fsc->mdsc;
 struct ceph_mds_request *req;
 int err;

 if (ceph_snap(dir) != CEPH_NOSNAP)
  return -EROFS;

 dout("link in dir %p old_dentry %p dentry %p\n", dir,
      old_dentry, dentry);
 req = ceph_mdsc_create_request(mdsc, CEPH_MDS_OP_LINK, USE_AUTH_MDS);
 if (IS_ERR(req)) {
  d_drop(dentry);
  return PTR_ERR(req);
 }
 req->r_dentry = dget(dentry);
 req->r_num_caps = 2;
 req->r_old_dentry = dget(old_dentry);
 req->r_parent = dir;
 set_bit(CEPH_MDS_R_PARENT_LOCKED, &req->r_req_flags);
 req->r_dentry_drop = CEPH_CAP_FILE_SHARED;
 req->r_dentry_unless = CEPH_CAP_FILE_EXCL;

 req->r_old_inode_drop = CEPH_CAP_LINK_SHARED | CEPH_CAP_LINK_EXCL;
 err = ceph_mdsc_do_request(mdsc, dir, req);
 if (err) {
  d_drop(dentry);
 } else if (!req->r_reply_info.head->is_dentry) {
  ihold(d_inode(old_dentry));
  d_instantiate(dentry, d_inode(old_dentry));
 }
 ceph_mdsc_put_request(req);
 return err;
}
