
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 update_ep_mode(unsigned ep, unsigned mode, u32 old)
{
 unsigned shift;

 shift = (ep - 1) * 2;
 old &= ~(3 << shift);
 old |= mode << shift;
 return old;
}
