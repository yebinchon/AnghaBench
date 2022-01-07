
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static u32 musb_default_busctl_offset(u8 epnum, u16 offset)
{
 return 0x80 + (0x08 * epnum) + offset;
}
