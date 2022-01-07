
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int OMAP_VRFB_LINE_LEN ;
 int VRFB_PAGE_HEIGHT ;

__attribute__((used)) static inline u32 get_extra_physical_size(u16 image_width_roundup, u8 bytespp)
{
 return (OMAP_VRFB_LINE_LEN - image_width_roundup) * VRFB_PAGE_HEIGHT *
  bytespp;
}
