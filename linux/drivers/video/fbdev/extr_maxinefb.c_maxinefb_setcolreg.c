
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 scalar_t__ IMS332_REG_COLOR_PALETTE ;
 int maxinefb_ims332_write_register (scalar_t__,unsigned long) ;

__attribute__((used)) static int maxinefb_setcolreg(unsigned regno, unsigned red, unsigned green,
         unsigned blue, unsigned transp, struct fb_info *info)
{

 unsigned long hw_colorvalue = 0;

 if (regno > 255)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;

 hw_colorvalue = (blue << 16) + (green << 8) + (red);

 maxinefb_ims332_write_register(IMS332_REG_COLOR_PALETTE + regno,
           hw_colorvalue);
 return 0;
}
