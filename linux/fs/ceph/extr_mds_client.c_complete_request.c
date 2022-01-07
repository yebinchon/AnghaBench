
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_request {int r_completion; int (* r_callback ) (struct ceph_mds_client*,struct ceph_mds_request*) ;} ;
struct ceph_mds_client {int dummy; } ;


 int complete_all (int *) ;
 int stub1 (struct ceph_mds_client*,struct ceph_mds_request*) ;

__attribute__((used)) static void complete_request(struct ceph_mds_client *mdsc,
        struct ceph_mds_request *req)
{
 if (req->r_callback)
  req->r_callback(mdsc, req);
 complete_all(&req->r_completion);
}
