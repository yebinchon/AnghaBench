
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_spi {int master; } ;


 int spi_controller_suspend (int ) ;
 int spi_shutdown_chip (struct dw_spi*) ;

int dw_spi_suspend_host(struct dw_spi *dws)
{
 int ret;

 ret = spi_controller_suspend(dws->master);
 if (ret)
  return ret;

 spi_shutdown_chip(dws);
 return 0;
}
