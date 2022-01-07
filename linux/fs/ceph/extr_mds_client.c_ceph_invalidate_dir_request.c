
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_mds_request {scalar_t__ r_old_dentry; scalar_t__ r_dentry; struct inode* r_old_dentry_dir; struct inode* r_parent; } ;


 int ceph_dir_clear_complete (struct inode*) ;
 int ceph_invalidate_dentry_lease (scalar_t__) ;
 int dout (char*,struct inode*,struct inode*) ;

void ceph_invalidate_dir_request(struct ceph_mds_request *req)
{
 struct inode *dir = req->r_parent;
 struct inode *old_dir = req->r_old_dentry_dir;

 dout("invalidate_dir_request %p %p (complete, lease(s))\n", dir, old_dir);

 ceph_dir_clear_complete(dir);
 if (old_dir)
  ceph_dir_clear_complete(old_dir);
 if (req->r_dentry)
  ceph_invalidate_dentry_lease(req->r_dentry);
 if (req->r_old_dentry)
  ceph_invalidate_dentry_lease(req->r_old_dentry);
}
