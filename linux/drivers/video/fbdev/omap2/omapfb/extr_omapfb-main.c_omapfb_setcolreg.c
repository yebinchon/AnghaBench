
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_info {int dummy; } ;


 int DBG (char*) ;
 int _setcolreg (struct fb_info*,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int omapfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
  u_int transp, struct fb_info *info)
{
 DBG("setcolreg\n");

 return _setcolreg(info, regno, red, green, blue, transp, 1);
}
