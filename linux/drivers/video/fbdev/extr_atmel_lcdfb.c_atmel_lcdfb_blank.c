
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct atmel_lcdfb_info* par; } ;
struct atmel_lcdfb_info {int dummy; } ;


 int EINVAL ;





 int atmel_lcdfb_start (struct atmel_lcdfb_info*) ;
 int atmel_lcdfb_stop (struct atmel_lcdfb_info*) ;

__attribute__((used)) static int atmel_lcdfb_blank(int blank_mode, struct fb_info *info)
{
 struct atmel_lcdfb_info *sinfo = info->par;

 switch (blank_mode) {
 case 129:
 case 131:
  atmel_lcdfb_start(sinfo);
  break;
 case 128:
 case 132:
  break;
 case 130:
  atmel_lcdfb_stop(sinfo);
  break;
 default:
  return -EINVAL;
 }


 return ((blank_mode == 131) ? 1 : 0);
}
