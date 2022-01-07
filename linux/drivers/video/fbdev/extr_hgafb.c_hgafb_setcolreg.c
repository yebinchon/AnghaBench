
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_info {int dummy; } ;



__attribute__((used)) static int hgafb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
      u_int transp, struct fb_info *info)
{
 if (regno > 1)
  return 1;
 return 0;
}
