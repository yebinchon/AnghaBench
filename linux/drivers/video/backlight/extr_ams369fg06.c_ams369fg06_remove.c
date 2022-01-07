
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ams369fg06 {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int ams369fg06_power (struct ams369fg06*,int ) ;
 struct ams369fg06* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ams369fg06_remove(struct spi_device *spi)
{
 struct ams369fg06 *lcd = spi_get_drvdata(spi);

 ams369fg06_power(lcd, FB_BLANK_POWERDOWN);
 return 0;
}
