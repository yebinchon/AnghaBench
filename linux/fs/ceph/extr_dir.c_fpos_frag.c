
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int loff_t ;


 int OFFSET_BITS ;

__attribute__((used)) static unsigned fpos_frag(loff_t p)
{
 return p >> OFFSET_BITS;
}
