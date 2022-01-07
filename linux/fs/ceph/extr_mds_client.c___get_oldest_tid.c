
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_mds_client {int oldest_tid; } ;



__attribute__((used)) static inline u64 __get_oldest_tid(struct ceph_mds_client *mdsc)
{
 return mdsc->oldest_tid;
}
