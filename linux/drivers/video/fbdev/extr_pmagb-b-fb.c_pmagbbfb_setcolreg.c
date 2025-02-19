
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmagbbfb_par {int dummy; } ;
struct TYPE_2__ {unsigned int len; } ;
struct fb_info {TYPE_1__ cmap; struct pmagbbfb_par* par; } ;


 int BT459_ADDR_HI ;
 int BT459_ADDR_LO ;
 int BT459_CMAP ;
 int dac_write (struct pmagbbfb_par*,int ,unsigned int) ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static int pmagbbfb_setcolreg(unsigned int regno, unsigned int red,
         unsigned int green, unsigned int blue,
         unsigned int transp, struct fb_info *info)
{
 struct pmagbbfb_par *par = info->par;

 if (regno >= info->cmap.len)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;

 mb();
 dac_write(par, BT459_ADDR_LO, regno);
 dac_write(par, BT459_ADDR_HI, 0x00);
 wmb();
 dac_write(par, BT459_CMAP, red);
 wmb();
 dac_write(par, BT459_CMAP, green);
 wmb();
 dac_write(par, BT459_CMAP, blue);

 return 0;
}
