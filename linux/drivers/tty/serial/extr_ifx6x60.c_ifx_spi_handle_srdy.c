
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifx_spi_device {int flags; int io_work_tasklet; int spi_timer; } ;


 int IFX_SPI_POWER_SRDY ;
 int IFX_SPI_STATE_IO_IN_PROGRESS ;
 int IFX_SPI_STATE_IO_READY ;
 int IFX_SPI_STATE_TIMER_PENDING ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int ifx_spi_power_state_set (struct ifx_spi_device*,int ) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ifx_spi_handle_srdy(struct ifx_spi_device *ifx_dev)
{
 if (test_bit(IFX_SPI_STATE_TIMER_PENDING, &ifx_dev->flags)) {
  del_timer(&ifx_dev->spi_timer);
  clear_bit(IFX_SPI_STATE_TIMER_PENDING, &ifx_dev->flags);
 }

 ifx_spi_power_state_set(ifx_dev, IFX_SPI_POWER_SRDY);

 if (!test_bit(IFX_SPI_STATE_IO_IN_PROGRESS, &ifx_dev->flags))
  tasklet_schedule(&ifx_dev->io_work_tasklet);
 else
  set_bit(IFX_SPI_STATE_IO_READY, &ifx_dev->flags);
}
