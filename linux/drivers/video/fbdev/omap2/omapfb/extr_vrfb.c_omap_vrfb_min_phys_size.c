
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 unsigned long OMAP_VRFB_LINE_LEN ;
 scalar_t__ get_extra_physical_size (unsigned long,int) ;
 unsigned long get_image_width_roundup (int,int) ;

u32 omap_vrfb_min_phys_size(u16 width, u16 height, u8 bytespp)
{
 unsigned long image_width_roundup = get_image_width_roundup(width,
  bytespp);

 if (image_width_roundup > OMAP_VRFB_LINE_LEN)
  return 0;

 return (width * height * bytespp) + get_extra_physical_size(
  image_width_roundup, bytespp);
}
