
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_mds_request {int dummy; } ;
struct ceph_mds_client {int dummy; } ;


 int ceph_mdsc_submit_request (struct ceph_mds_client*,struct inode*,struct ceph_mds_request*) ;
 int ceph_mdsc_wait_request (struct ceph_mds_client*,struct ceph_mds_request*) ;
 int dout (char*,struct ceph_mds_request*,...) ;

int ceph_mdsc_do_request(struct ceph_mds_client *mdsc,
    struct inode *dir,
    struct ceph_mds_request *req)
{
 int err;

 dout("do_request on %p\n", req);


 err = ceph_mdsc_submit_request(mdsc, dir, req);
 if (!err)
  err = ceph_mdsc_wait_request(mdsc, req);
 dout("do_request %p done, result %d\n", req, err);
 return err;
}
