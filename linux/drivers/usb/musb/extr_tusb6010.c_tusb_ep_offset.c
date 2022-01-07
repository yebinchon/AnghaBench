
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static u32 tusb_ep_offset(u8 epnum, u16 offset)
{
 return 0x10 + offset;
}
