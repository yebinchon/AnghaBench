
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ifx_spi_device {int flags; int tty_port; TYPE_1__* spi_dev; } ;
struct TYPE_2__ {int dev; } ;


 int IFX_SPI_STATE_TIMER_PENDING ;
 int clear_bit (int ,int *) ;
 int dev_warn (int *,char*) ;
 struct ifx_spi_device* from_timer (int ,struct timer_list*,int ) ;
 struct ifx_spi_device* ifx_dev ;
 int mrdy_set_low (struct ifx_spi_device*) ;
 int spi_timer ;
 int tty_port_tty_hangup (int *,int) ;

__attribute__((used)) static void ifx_spi_timeout(struct timer_list *t)
{
 struct ifx_spi_device *ifx_dev = from_timer(ifx_dev, t, spi_timer);

 dev_warn(&ifx_dev->spi_dev->dev, "*** SPI Timeout ***");
 tty_port_tty_hangup(&ifx_dev->tty_port, 0);
 mrdy_set_low(ifx_dev);
 clear_bit(IFX_SPI_STATE_TIMER_PENDING, &ifx_dev->flags);
}
