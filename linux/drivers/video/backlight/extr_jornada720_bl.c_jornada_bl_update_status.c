
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ power; scalar_t__ fb_blank; scalar_t__ brightness; } ;
struct backlight_device {int dev; TYPE_1__ props; } ;


 scalar_t__ BL_MAX_BRIGHT ;
 scalar_t__ BRIGHTNESSOFF ;
 int ETIMEDOUT ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int PPC_LDD1 ;
 int PPDR ;
 int PPSR ;
 scalar_t__ SETBRIGHTNESS ;
 int TXDUMMY ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int jornada_ssp_byte (scalar_t__) ;
 int jornada_ssp_end () ;
 int jornada_ssp_start () ;

__attribute__((used)) static int jornada_bl_update_status(struct backlight_device *bd)
{
 int ret = 0;

 jornada_ssp_start();


 if ((bd->props.power != FB_BLANK_UNBLANK) || (bd->props.fb_blank != FB_BLANK_UNBLANK)) {
  ret = jornada_ssp_byte(BRIGHTNESSOFF);
  if (ret != TXDUMMY) {
   dev_info(&bd->dev, "brightness off timeout\n");

   PPSR &= ~PPC_LDD1;
   PPDR |= PPC_LDD1;
   ret = -ETIMEDOUT;
  }
 } else
  PPSR |= PPC_LDD1;


  if (jornada_ssp_byte(SETBRIGHTNESS) != TXDUMMY) {
   dev_info(&bd->dev, "failed to set brightness\n");
   ret = -ETIMEDOUT;
   goto out;
  }
  if (jornada_ssp_byte(BL_MAX_BRIGHT - bd->props.brightness)
   != TXDUMMY) {
   dev_err(&bd->dev, "set brightness failed\n");
   ret = -ETIMEDOUT;
  }





out:
 jornada_ssp_end();

 return ret;
}
