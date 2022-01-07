
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int HASH_ORDER ;

loff_t ceph_make_fpos(unsigned high, unsigned off, bool hash_order)
{
 loff_t fpos = ((loff_t)high << 28) | (loff_t)off;
 if (hash_order)
  fpos |= HASH_ORDER;
 return fpos;
}
