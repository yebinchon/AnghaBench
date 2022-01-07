
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_request {int r_kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void ceph_mdsc_get_request(struct ceph_mds_request *req)
{
 kref_get(&req->r_kref);
}
