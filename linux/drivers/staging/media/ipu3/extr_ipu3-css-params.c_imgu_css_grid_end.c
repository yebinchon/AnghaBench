
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int IPU3_UAPI_GRID_START_MASK ;

__attribute__((used)) static u16 imgu_css_grid_end(u16 start, u8 width, u8 block_width_log2)
{
 return (start & IPU3_UAPI_GRID_START_MASK) +
  (width << block_width_log2) - 1;
}
