
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ifx_spi_device* driver_data; } ;
struct ifx_spi_device {int tty_port; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void ifx_spi_close(struct tty_struct *tty, struct file *filp)
{
 struct ifx_spi_device *ifx_dev = tty->driver_data;
 tty_port_close(&ifx_dev->tty_port, tty, filp);

}
