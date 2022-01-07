
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int bad ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_need (void**,void*,int,int ) ;

__attribute__((used)) static int __decode_and_drop_compat_set(void **p, void* end)
{
 int i;

 for (i = 0; i < 3; i++) {
  u32 n;
  ceph_decode_need(p, end, sizeof(u64) + sizeof(u32), bad);

  *p += sizeof(u64);

  n = ceph_decode_32(p);
  while (n-- > 0) {
   u32 len;
   ceph_decode_need(p, end, sizeof(u64) + sizeof(u32),
      bad);
   *p += sizeof(u64);
   len = ceph_decode_32(p);
   ceph_decode_need(p, end, len, bad);
   *p += len;
  }
 }
 return 0;
bad:
 return -1;
}
