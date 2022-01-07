
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifx_spi_device {int tx_fifo; int tty_port; int minor; scalar_t__ tty_dev; } ;


 int kfifo_free (int *) ;
 int tty_drv ;
 int tty_port_destroy (int *) ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static void ifx_spi_free_port(struct ifx_spi_device *ifx_dev)
{
 if (ifx_dev->tty_dev)
  tty_unregister_device(tty_drv, ifx_dev->minor);
 tty_port_destroy(&ifx_dev->tty_port);
 kfifo_free(&ifx_dev->tx_fifo);
}
