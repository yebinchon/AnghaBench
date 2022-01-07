
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mrdy; } ;
struct ifx_spi_device {TYPE_1__ gpio; } ;


 int gpio_set_value (int ,int ) ;

__attribute__((used)) static inline void mrdy_set_low(struct ifx_spi_device *ifx)
{
 gpio_set_value(ifx->gpio.mrdy, 0);
}
