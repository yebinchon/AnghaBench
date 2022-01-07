
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;
struct fb_videomode {int xres; } ;
struct corgi_lcd {int mode; } ;




 int RESCTL_ADRS ;
 int RESCTL_QVGA ;
 int RESCTL_VGA ;
 int corgi_ssp_lcdtg_send (struct corgi_lcd*,int ,int ) ;
 struct corgi_lcd* lcd_get_data (struct lcd_device*) ;
 int lcdtg_set_phadadj (struct corgi_lcd*,int) ;

__attribute__((used)) static int corgi_lcd_set_mode(struct lcd_device *ld, struct fb_videomode *m)
{
 struct corgi_lcd *lcd = lcd_get_data(ld);
 int mode = 129;

 if (m->xres == 640 || m->xres == 480)
  mode = 128;

 if (lcd->mode == mode)
  return 0;

 lcdtg_set_phadadj(lcd, mode);

 switch (mode) {
 case 128:
  corgi_ssp_lcdtg_send(lcd, RESCTL_ADRS, RESCTL_VGA);
  break;
 case 129:
 default:
  corgi_ssp_lcdtg_send(lcd, RESCTL_ADRS, RESCTL_QVGA);
  break;
 }

 lcd->mode = mode;
 return 0;
}
