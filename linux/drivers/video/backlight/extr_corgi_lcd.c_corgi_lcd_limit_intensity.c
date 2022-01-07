
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bl_dev; } ;


 int CORGIBL_BATTLOW ;
 int backlight_update_status (int ) ;
 int corgibl_flags ;
 TYPE_1__* the_corgi_lcd ;

void corgi_lcd_limit_intensity(int limit)
{
 if (limit)
  corgibl_flags |= CORGIBL_BATTLOW;
 else
  corgibl_flags &= ~CORGIBL_BATTLOW;

 backlight_update_status(the_corgi_lcd->bl_dev);
}
