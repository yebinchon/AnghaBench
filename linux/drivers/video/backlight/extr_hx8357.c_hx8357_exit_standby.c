
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_device {int dummy; } ;


 int HX8357_EXIT_SLEEP_MODE ;
 int HX8357_SET_DISPLAY_ON ;
 int hx8357_spi_write_byte (struct lcd_device*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int hx8357_exit_standby(struct lcd_device *lcdev)
{
 int ret;

 ret = hx8357_spi_write_byte(lcdev, HX8357_EXIT_SLEEP_MODE);
 if (ret < 0)
  return ret;





 msleep(120);

 ret = hx8357_spi_write_byte(lcdev, HX8357_SET_DISPLAY_ON);
 if (ret < 0)
  return ret;

 return 0;
}
