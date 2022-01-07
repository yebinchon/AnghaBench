
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unack_srdy_int_nb; } ;
struct ifx_spi_device {TYPE_1__ gpio; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ifx_spi_handle_srdy (struct ifx_spi_device*) ;

__attribute__((used)) static irqreturn_t ifx_spi_srdy_interrupt(int irq, void *dev)
{
 struct ifx_spi_device *ifx_dev = dev;
 ifx_dev->gpio.unack_srdy_int_nb++;
 ifx_spi_handle_srdy(ifx_dev);
 return IRQ_HANDLED;
}
