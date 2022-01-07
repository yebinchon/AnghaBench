
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int ceph_frag_compare (int ,int ) ;
 int fpos_frag (int ) ;
 scalar_t__ fpos_off (int ) ;

__attribute__((used)) static int fpos_cmp(loff_t l, loff_t r)
{
 int v = ceph_frag_compare(fpos_frag(l), fpos_frag(r));
 if (v)
  return v;
 return (int)(fpos_off(l) - fpos_off(r));
}
