
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int ALIGN (int,int ) ;
 int VRFB_PAGE_HEIGHT ;
 int VRFB_PAGE_WIDTH ;

void omap_vrfb_adjust_size(u16 *width, u16 *height,
  u8 bytespp)
{
 *width = ALIGN(*width * bytespp, VRFB_PAGE_WIDTH) / bytespp;
 *height = ALIGN(*height, VRFB_PAGE_HEIGHT);
}
