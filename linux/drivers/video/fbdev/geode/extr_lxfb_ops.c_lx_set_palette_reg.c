
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lxfb_par {int dummy; } ;
struct fb_info {struct lxfb_par* par; } ;
typedef int green ;


 int DC_PAL_ADDRESS ;
 int DC_PAL_DATA ;
 int write_dc (struct lxfb_par*,int ,int) ;

void lx_set_palette_reg(struct fb_info *info, unsigned regno,
   unsigned red, unsigned green, unsigned blue)
{
 struct lxfb_par *par = info->par;
 int val;



 val = (red << 8) & 0xff0000;
 val |= (green) & 0x00ff00;
 val |= (blue >> 8) & 0x0000ff;

 write_dc(par, DC_PAL_ADDRESS, regno);
 write_dc(par, DC_PAL_DATA, val);
}
