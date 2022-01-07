
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_request {int r_kref; } ;


 int ceph_mdsc_release_request ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void ceph_mdsc_put_request(struct ceph_mds_request *req)
{
 kref_put(&req->r_kref, ceph_mdsc_release_request);
}
