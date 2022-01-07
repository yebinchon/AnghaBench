
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_var_screeninfo {int sync; } ;


 int FB_SYNC_HOR_HIGH_ACT ;
 int FB_SYNC_VERT_HIGH_ACT ;
 int VIA_HSYNC_NEGATIVE ;
 int VIA_VSYNC_NEGATIVE ;

__attribute__((used)) static u8 get_sync(struct fb_var_screeninfo *var)
{
 u8 polarity = 0;

 if (!(var->sync & FB_SYNC_HOR_HIGH_ACT))
  polarity |= VIA_HSYNC_NEGATIVE;
 if (!(var->sync & FB_SYNC_VERT_HIGH_ACT))
  polarity |= VIA_VSYNC_NEGATIVE;
 return polarity;
}
