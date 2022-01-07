
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_request {int * r_session; } ;


 int ceph_put_mds_session (int *) ;

__attribute__((used)) static void put_request_session(struct ceph_mds_request *req)
{
 if (req->r_session) {
  ceph_put_mds_session(req->r_session);
  req->r_session = ((void*)0);
 }
}
