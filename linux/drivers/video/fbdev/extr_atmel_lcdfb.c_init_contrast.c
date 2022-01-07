
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_lcdfb_pdata {scalar_t__ lcdcon_is_backlight; scalar_t__ lcdcon_pol_negative; } ;
struct atmel_lcdfb_info {struct atmel_lcdfb_pdata pdata; } ;


 int ATMEL_LCDC_CONTRAST_CTR ;
 int ATMEL_LCDC_CONTRAST_VAL ;
 int ATMEL_LCDC_CVAL_DEFAULT ;
 int ATMEL_LCDC_POL_POSITIVE ;
 int contrast_ctr ;
 int init_backlight (struct atmel_lcdfb_info*) ;
 int lcdc_writel (struct atmel_lcdfb_info*,int ,int ) ;

__attribute__((used)) static void init_contrast(struct atmel_lcdfb_info *sinfo)
{
 struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;


 if (pdata->lcdcon_pol_negative)
  contrast_ctr &= ~(ATMEL_LCDC_POL_POSITIVE);


 lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_CTR, contrast_ctr);
 lcdc_writel(sinfo, ATMEL_LCDC_CONTRAST_VAL, ATMEL_LCDC_CVAL_DEFAULT);

 if (pdata->lcdcon_is_backlight)
  init_backlight(sinfo);
}
