
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ SUNXI_MUSB_TXFUNCADDR ;

__attribute__((used)) static u32 sunxi_musb_busctl_offset(u8 epnum, u16 offset)
{
 return SUNXI_MUSB_TXFUNCADDR + offset;
}
