
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_bl {scalar_t__ state; size_t led_reg; char brightness; int da9052; } ;


 int DA9052_BOOST_REG ;
 int DA9052_LED_CONT_REG ;
 scalar_t__ DA9052_WLEDS_OFF ;
 int da9052_reg_write (int ,int ,int) ;
 int usleep_range (int,int) ;
 int * wled_bank ;

__attribute__((used)) static int da9052_adjust_wled_brightness(struct da9052_bl *wleds)
{
 unsigned char boost_en;
 unsigned char i_sink;
 int ret;

 boost_en = 0x3F;
 i_sink = 0xFF;
 if (wleds->state == DA9052_WLEDS_OFF) {
  boost_en = 0x00;
  i_sink = 0x00;
 }

 ret = da9052_reg_write(wleds->da9052, DA9052_BOOST_REG, boost_en);
 if (ret < 0)
  return ret;

 ret = da9052_reg_write(wleds->da9052, DA9052_LED_CONT_REG, i_sink);
 if (ret < 0)
  return ret;

 ret = da9052_reg_write(wleds->da9052, wled_bank[wleds->led_reg], 0x0);
 if (ret < 0)
  return ret;

 usleep_range(10000, 11000);

 if (wleds->brightness) {
  ret = da9052_reg_write(wleds->da9052, wled_bank[wleds->led_reg],
           wleds->brightness);
  if (ret < 0)
   return ret;
 }

 return 0;
}
