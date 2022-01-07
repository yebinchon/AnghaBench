
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ltv350qv {int dummy; } ;


 int FB_BLANK_POWERDOWN ;
 int ltv350qv_power (struct ltv350qv*,int ) ;
 struct ltv350qv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void ltv350qv_shutdown(struct spi_device *spi)
{
 struct ltv350qv *lcd = spi_get_drvdata(spi);

 ltv350qv_power(lcd, FB_BLANK_POWERDOWN);
}
