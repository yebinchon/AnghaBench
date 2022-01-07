
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct TYPE_2__ {int reset_out; int po; int reset; int mrdy; int srdy; } ;
struct ifx_spi_device {TYPE_1__ gpio; int io_work_tasklet; } ;


 int free_irq (int ,struct ifx_spi_device*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;
 int ifx_spi_free_device (struct ifx_spi_device*) ;
 int * saved_ifx_dev ;
 struct ifx_spi_device* spi_get_drvdata (struct spi_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int ifx_spi_spi_remove(struct spi_device *spi)
{
 struct ifx_spi_device *ifx_dev = spi_get_drvdata(spi);

 tasklet_kill(&ifx_dev->io_work_tasklet);

 free_irq(gpio_to_irq(ifx_dev->gpio.reset_out), ifx_dev);
 free_irq(gpio_to_irq(ifx_dev->gpio.srdy), ifx_dev);

 gpio_free(ifx_dev->gpio.srdy);
 gpio_free(ifx_dev->gpio.mrdy);
 gpio_free(ifx_dev->gpio.reset);
 gpio_free(ifx_dev->gpio.po);
 gpio_free(ifx_dev->gpio.reset_out);


 ifx_spi_free_device(ifx_dev);

 saved_ifx_dev = ((void*)0);
 return 0;
}
