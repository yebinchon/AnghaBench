
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_match {TYPE_2__* port; TYPE_1__* driver; } ;
struct tty_driver {int minor_start; int major; } ;
struct device {scalar_t__ devt; } ;
typedef scalar_t__ dev_t ;
struct TYPE_4__ {scalar_t__ line; } ;
struct TYPE_3__ {struct tty_driver* tty_driver; } ;


 scalar_t__ MKDEV (int ,int ) ;

__attribute__((used)) static int serial_match_port(struct device *dev, void *data)
{
 struct uart_match *match = data;
 struct tty_driver *tty_drv = match->driver->tty_driver;
 dev_t devt = MKDEV(tty_drv->major, tty_drv->minor_start) +
  match->port->line;

 return dev->devt == devt;
}
