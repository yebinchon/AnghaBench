
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lynx_accel {int dummy; } ;


 int DE_STRETCH_FORMAT ;
 int DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK ;
 int DE_STRETCH_FORMAT_PIXEL_FORMAT_SHIFT ;
 int read_dpr (struct lynx_accel*,int ) ;
 int write_dpr (struct lynx_accel*,int ,int) ;

void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt)
{
 u32 reg;


 reg = read_dpr(accel, DE_STRETCH_FORMAT);
 reg &= ~DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK;
 reg |= ((fmt << DE_STRETCH_FORMAT_PIXEL_FORMAT_SHIFT) &
  DE_STRETCH_FORMAT_PIXEL_FORMAT_MASK);
 write_dpr(accel, DE_STRETCH_FORMAT, reg);
}
