
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tty_port; } ;


 TYPE_1__* saved_ifx_dev ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int ifx_spi_open(struct tty_struct *tty, struct file *filp)
{
 return tty_port_open(&saved_ifx_dev->tty_port, tty, filp);
}
