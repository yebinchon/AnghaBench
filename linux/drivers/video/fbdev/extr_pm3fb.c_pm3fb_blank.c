
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pm3_par {int video; } ;
struct fb_info {struct pm3_par* par; } ;


 int DPRINTK (char*,int) ;





 int PM3VideoControl ;
 int PM3VideoControl_BLANK_ACTIVE_LOW ;
 int PM3VideoControl_ENABLE ;
 int PM3VideoControl_HSYNC_ACTIVE_HIGH ;
 int PM3VideoControl_HSYNC_MASK ;
 int PM3VideoControl_VSYNC_ACTIVE_HIGH ;
 int PM3VideoControl_VSYNC_MASK ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,int) ;

__attribute__((used)) static int pm3fb_blank(int blank_mode, struct fb_info *info)
{
 struct pm3_par *par = info->par;
 u32 video = par->video;







 video &= ~(PM3VideoControl_HSYNC_MASK |
     PM3VideoControl_VSYNC_MASK);
 video |= PM3VideoControl_HSYNC_ACTIVE_HIGH |
   PM3VideoControl_VSYNC_ACTIVE_HIGH;

 switch (blank_mode) {
 case 129:
  video |= PM3VideoControl_ENABLE;
  break;
 case 131:
  video &= ~PM3VideoControl_ENABLE;
  break;
 case 132:
  video &= ~(PM3VideoControl_HSYNC_MASK |
     PM3VideoControl_BLANK_ACTIVE_LOW);
  break;
 case 128:
  video &= ~(PM3VideoControl_VSYNC_MASK |
     PM3VideoControl_BLANK_ACTIVE_LOW);
  break;
 case 130:
  video &= ~(PM3VideoControl_HSYNC_MASK |
     PM3VideoControl_VSYNC_MASK |
     PM3VideoControl_BLANK_ACTIVE_LOW);
  break;
 default:
  DPRINTK("Unsupported blanking %d\n", blank_mode);
  return 1;
 }

 PM3_WAIT(par, 1);
 PM3_WRITE_REG(par, PM3VideoControl, video);
 return 0;
}
