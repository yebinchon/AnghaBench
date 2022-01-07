
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_mds_request {int r_err; scalar_t__ r_old_dentry_dir; scalar_t__ r_parent; scalar_t__ r_inode; } ;
struct ceph_mds_client {int mutex; } ;


 int CEPH_CAP_PIN ;
 int __do_request (struct ceph_mds_client*,struct ceph_mds_request*) ;
 int __register_request (struct ceph_mds_client*,struct ceph_mds_request*,struct inode*) ;
 int ceph_get_cap_refs (int ,int ) ;
 int ceph_inode (scalar_t__) ;
 int dout (char*,struct ceph_mds_request*,struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ceph_mdsc_submit_request(struct ceph_mds_client *mdsc, struct inode *dir,
         struct ceph_mds_request *req)
{
 int err;


 if (req->r_inode)
  ceph_get_cap_refs(ceph_inode(req->r_inode), CEPH_CAP_PIN);
 if (req->r_parent)
  ceph_get_cap_refs(ceph_inode(req->r_parent), CEPH_CAP_PIN);
 if (req->r_old_dentry_dir)
  ceph_get_cap_refs(ceph_inode(req->r_old_dentry_dir),
      CEPH_CAP_PIN);

 dout("submit_request on %p for inode %p\n", req, dir);
 mutex_lock(&mdsc->mutex);
 __register_request(mdsc, req, dir);
 __do_request(mdsc, req);
 err = req->r_err;
 mutex_unlock(&mdsc->mutex);
 return err;
}
