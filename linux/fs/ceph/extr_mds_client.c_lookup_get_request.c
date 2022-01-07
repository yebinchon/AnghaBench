
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_mds_request {int dummy; } ;
struct ceph_mds_client {int request_tree; } ;


 int ceph_mdsc_get_request (struct ceph_mds_request*) ;
 struct ceph_mds_request* lookup_request (int *,int ) ;

__attribute__((used)) static struct ceph_mds_request *
lookup_get_request(struct ceph_mds_client *mdsc, u64 tid)
{
 struct ceph_mds_request *req;

 req = lookup_request(&mdsc->request_tree, tid);
 if (req)
  ceph_mdsc_get_request(req);

 return req;
}
