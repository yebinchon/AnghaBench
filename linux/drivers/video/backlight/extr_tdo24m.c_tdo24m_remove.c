
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int dummy; } ;
struct spi_device {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 struct tdo24m* spi_get_drvdata (struct spi_device*) ;
 int tdo24m_power (struct tdo24m*,int ) ;

__attribute__((used)) static int tdo24m_remove(struct spi_device *spi)
{
 struct tdo24m *lcd = spi_get_drvdata(spi);

 tdo24m_power(lcd, FB_BLANK_POWERDOWN);
 return 0;
}
