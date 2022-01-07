
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dev; } ;


 int BL_MAX_BRIGHT ;
 int ETIMEDOUT ;
 int GETBRIGHTNESS ;
 int PPC_LDD1 ;
 int PPSR ;
 int TXDUMMY ;
 int dev_err (int *,char*) ;
 int jornada_ssp_byte (int) ;
 int jornada_ssp_end () ;
 int jornada_ssp_start () ;

__attribute__((used)) static int jornada_bl_get_brightness(struct backlight_device *bd)
{
 int ret;


 if (!(PPSR & PPC_LDD1))
  return 0;

 jornada_ssp_start();


 ret = jornada_ssp_byte(GETBRIGHTNESS);

 if (jornada_ssp_byte(GETBRIGHTNESS) != TXDUMMY) {
  dev_err(&bd->dev, "get brightness timeout\n");
  jornada_ssp_end();
  return -ETIMEDOUT;
 }


 ret = jornada_ssp_byte(TXDUMMY);

 jornada_ssp_end();

 return BL_MAX_BRIGHT - ret;
}
