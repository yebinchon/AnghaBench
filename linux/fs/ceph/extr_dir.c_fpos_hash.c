
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int ceph_frag_value (int ) ;
 int fpos_frag (int ) ;

__attribute__((used)) static unsigned fpos_hash(loff_t p)
{
 return ceph_frag_value(fpos_frag(p));
}
