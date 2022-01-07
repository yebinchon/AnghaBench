
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ifx_spi_device {int dummy; } ;


 int ifx_modem_power_off (struct ifx_spi_device*) ;
 struct ifx_spi_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void ifx_spi_spi_shutdown(struct spi_device *spi)
{
 struct ifx_spi_device *ifx_dev = spi_get_drvdata(spi);

 ifx_modem_power_off(ifx_dev);
}
