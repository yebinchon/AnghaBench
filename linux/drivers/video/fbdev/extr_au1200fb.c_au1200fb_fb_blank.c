
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct au1200fb_device* par; } ;
struct au1200fb_device {int pd; } ;


 int EINVAL ;





 int au1200_setpanel (int *,int ) ;
 scalar_t__ noblanking ;
 int * panel ;

__attribute__((used)) static int au1200fb_fb_blank(int blank_mode, struct fb_info *fbi)
{
 struct au1200fb_device *fbdev = fbi->par;


 if (noblanking)
  return 0;

 switch (blank_mode) {

 case 129:
 case 131:

  au1200_setpanel(panel, fbdev->pd);
  break;
 case 128:
 case 132:
 case 130:

  au1200_setpanel(((void*)0), fbdev->pd);
  break;
 default:
  break;

 }


 return (blank_mode == 131) ? -EINVAL : 0;
}
