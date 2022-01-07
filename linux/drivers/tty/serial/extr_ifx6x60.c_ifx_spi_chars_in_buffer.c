
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int tx_fifo; } ;


 int kfifo_len (int *) ;

__attribute__((used)) static int ifx_spi_chars_in_buffer(struct tty_struct *tty)
{
 struct ifx_spi_device *ifx_dev = tty->driver_data;
 return kfifo_len(&ifx_dev->tx_fifo);
}
