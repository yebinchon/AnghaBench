
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int AP_CONTROL_3A ;
 int out_8 (int ,int) ;

__attribute__((used)) static int dnfb_blank(int blank, struct fb_info *info)
{
 if (blank)
  out_8(AP_CONTROL_3A, 0x0);
 else
  out_8(AP_CONTROL_3A, 0x1);
 return 0;
}
