
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int REG_POWER_CONTROL_1 ;
 int REG_POWER_CONTROL_2 ;
 int REG_POWER_CONTROL_3 ;
 int REG_POWER_CONTROL_4 ;
 int ili922x_write (struct spi_device*,int,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ili922x_poweron(struct spi_device *spi)
{
 int ret;


 ret = ili922x_write(spi, REG_POWER_CONTROL_1, 0x0000);
 usleep_range(10000, 10500);
 ret += ili922x_write(spi, REG_POWER_CONTROL_2, 0x0000);
 ret += ili922x_write(spi, REG_POWER_CONTROL_3, 0x0000);
 msleep(40);
 ret += ili922x_write(spi, REG_POWER_CONTROL_4, 0x0000);
 msleep(40);

 ret += ili922x_write(spi, 0x56, 0x080F);
 ret += ili922x_write(spi, REG_POWER_CONTROL_1, 0x4240);
 usleep_range(10000, 10500);
 ret += ili922x_write(spi, REG_POWER_CONTROL_2, 0x0000);
 ret += ili922x_write(spi, REG_POWER_CONTROL_3, 0x0014);
 msleep(40);
 ret += ili922x_write(spi, REG_POWER_CONTROL_4, 0x1319);
 msleep(40);

 return ret;
}
