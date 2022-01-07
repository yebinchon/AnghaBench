
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int * olpc_ec ;
 int * olpc_xo175_ec_power_off ;
 int platform_device_unregister (int *) ;
 int * pm_power_off ;
 int spi_slave_abort (struct spi_device*) ;

__attribute__((used)) static int olpc_xo175_ec_remove(struct spi_device *spi)
{
 if (pm_power_off == olpc_xo175_ec_power_off)
  pm_power_off = ((void*)0);

 spi_slave_abort(spi);

 platform_device_unregister(olpc_ec);
 olpc_ec = ((void*)0);

 return 0;
}
