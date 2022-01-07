
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;


 int WARN_ONCE (int,char*) ;

__attribute__((used)) static u32 sunxi_musb_ep_offset(u8 epnum, u16 offset)
{
 WARN_ONCE(offset != 0,
    "sunxi_musb_ep_offset called with non 0 offset\n");

 return 0x80;
}
