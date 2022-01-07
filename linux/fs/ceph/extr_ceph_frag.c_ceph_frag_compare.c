
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;


 unsigned int ceph_frag_bits (int ) ;
 unsigned int ceph_frag_value (int ) ;

int ceph_frag_compare(__u32 a, __u32 b)
{
 unsigned va = ceph_frag_value(a);
 unsigned vb = ceph_frag_value(b);
 if (va < vb)
  return -1;
 if (va > vb)
  return 1;
 va = ceph_frag_bits(a);
 vb = ceph_frag_bits(b);
 if (va < vb)
  return -1;
 if (va > vb)
  return 1;
 return 0;
}
