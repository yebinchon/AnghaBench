
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmpfb_info {int dummy; } ;
struct fb_info {struct mmpfb_info* par; } ;


 int FB_BLANK_UNBLANK ;
 int mmpfb_power (struct mmpfb_info*,int) ;

__attribute__((used)) static int mmpfb_blank(int blank, struct fb_info *info)
{
 struct mmpfb_info *fbi = info->par;

 mmpfb_power(fbi, (blank == FB_BLANK_UNBLANK));

 return 0;
}
