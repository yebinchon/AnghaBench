
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dev; } ;


 int ETIMEDOUT ;
 int SETCONTRAST ;
 scalar_t__ TXDUMMY ;
 int dev_err (int *,char*) ;
 scalar_t__ jornada_ssp_byte (int) ;
 int jornada_ssp_end () ;
 int jornada_ssp_start () ;

__attribute__((used)) static int jornada_lcd_set_contrast(struct lcd_device *ld, int value)
{
 int ret = 0;

 jornada_ssp_start();


 if (jornada_ssp_byte(SETCONTRAST) == TXDUMMY) {

  if (jornada_ssp_byte(value) == TXDUMMY)
   goto success;
 }

 dev_err(&ld->dev, "failed to set contrast\n");
 ret = -ETIMEDOUT;

success:
 jornada_ssp_end();
 return ret;
}
