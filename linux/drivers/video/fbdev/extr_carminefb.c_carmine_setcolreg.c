
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ pseudo_palette; } ;
typedef int __be32 ;


 int cpu_to_be32 (unsigned int) ;

__attribute__((used)) static int carmine_setcolreg(unsigned regno, unsigned red, unsigned green,
  unsigned blue, unsigned transp, struct fb_info *info)
{
 if (regno >= 16)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;
 transp >>= 8;

 ((__be32 *)info->pseudo_palette)[regno] = cpu_to_be32(transp << 24 |
  red << 0 | green << 8 | blue << 16);
 return 0;
}
