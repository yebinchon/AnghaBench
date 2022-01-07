
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_lcdfb_info {TYPE_1__* config; } ;
struct TYPE_2__ {int have_hozval; } ;


 unsigned long ATMEL_LCDC_DISTYPE ;
 unsigned long ATMEL_LCDC_DISTYPE_STNCOLOR ;
 unsigned long ATMEL_LCDC_DISTYPE_TFT ;
 unsigned long ATMEL_LCDC_IFWIDTH ;
 unsigned long ATMEL_LCDC_IFWIDTH_4 ;
 unsigned long ATMEL_LCDC_IFWIDTH_8 ;
 int ATMEL_LCDC_LCDCON2 ;
 unsigned long ATMEL_LCDC_SCANMOD ;
 unsigned long ATMEL_LCDC_SCANMOD_DUAL ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 unsigned long lcdc_readl (struct atmel_lcdfb_info*,int ) ;

__attribute__((used)) static unsigned long compute_hozval(struct atmel_lcdfb_info *sinfo,
       unsigned long xres)
{
 unsigned long lcdcon2;
 unsigned long value;

 if (!sinfo->config->have_hozval)
  return xres;

 lcdcon2 = lcdc_readl(sinfo, ATMEL_LCDC_LCDCON2);
 value = xres;
 if ((lcdcon2 & ATMEL_LCDC_DISTYPE) != ATMEL_LCDC_DISTYPE_TFT) {

  if ((lcdcon2 & ATMEL_LCDC_DISTYPE) == ATMEL_LCDC_DISTYPE_STNCOLOR) {
   value *= 3;
  }
  if ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_4
     || ( (lcdcon2 & ATMEL_LCDC_IFWIDTH) == ATMEL_LCDC_IFWIDTH_8
        && (lcdcon2 & ATMEL_LCDC_SCANMOD) == ATMEL_LCDC_SCANMOD_DUAL ))
   value = DIV_ROUND_UP(value, 4);
  else
   value = DIV_ROUND_UP(value, 8);
 }

 return value;
}
