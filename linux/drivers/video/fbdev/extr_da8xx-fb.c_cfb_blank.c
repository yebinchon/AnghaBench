
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {int blank; int lcd_supply; } ;


 int DA8XX_FRAME_WAIT ;
 int EINVAL ;





 int lcd_disable_raster (int ) ;
 int lcd_enable_raster () ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int cfb_blank(int blank, struct fb_info *info)
{
 struct da8xx_fb_par *par = info->par;
 int ret = 0;

 if (par->blank == blank)
  return 0;

 par->blank = blank;
 switch (blank) {
 case 129:
  lcd_enable_raster();

  if (par->lcd_supply) {
   ret = regulator_enable(par->lcd_supply);
   if (ret)
    return ret;
  }
  break;
 case 131:
 case 128:
 case 132:
 case 130:
  if (par->lcd_supply) {
   ret = regulator_disable(par->lcd_supply);
   if (ret)
    return ret;
  }

  lcd_disable_raster(DA8XX_FRAME_WAIT);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
