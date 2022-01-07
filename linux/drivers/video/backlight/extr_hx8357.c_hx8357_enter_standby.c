
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int HX8357_ENTER_SLEEP_MODE ;
 int HX8357_SET_DISPLAY_OFF ;
 int hx8357_spi_write_byte (struct lcd_device*,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hx8357_enter_standby(struct lcd_device *lcdev)
{
 int ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_SET_DISPLAY_OFF);
 if (ret < 0)
  return ret;

 usleep_range(10000, 12000);

 ret = hx8357_spi_write_byte(lcdev, HX8357_ENTER_SLEEP_MODE);
 if (ret < 0)
  return ret;





 msleep(120);

 return 0;
}
