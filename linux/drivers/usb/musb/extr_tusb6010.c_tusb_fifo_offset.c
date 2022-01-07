
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 tusb_fifo_offset(u8 epnum)
{
 return 0x200 + (epnum * 0x20);
}
