
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srdy; } ;
struct ifx_spi_device {int spi_timer; int flags; TYPE_1__ gpio; } ;


 int HZ ;
 int IFX_SPI_POWER_DATA_PENDING ;
 int IFX_SPI_STATE_TIMER_PENDING ;
 int IFX_SPI_TIMEOUT_SEC ;
 int gpio_get_value (int ) ;
 int ifx_spi_power_state_set (struct ifx_spi_device*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mrdy_set_high (struct ifx_spi_device*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void mrdy_assert(struct ifx_spi_device *ifx_dev)
{
 int val = gpio_get_value(ifx_dev->gpio.srdy);
 if (!val) {
  if (!test_and_set_bit(IFX_SPI_STATE_TIMER_PENDING,
          &ifx_dev->flags)) {
   mod_timer(&ifx_dev->spi_timer,jiffies + IFX_SPI_TIMEOUT_SEC*HZ);

  }
 }
 ifx_spi_power_state_set(ifx_dev, IFX_SPI_POWER_DATA_PENDING);
 mrdy_set_high(ifx_dev);
}
