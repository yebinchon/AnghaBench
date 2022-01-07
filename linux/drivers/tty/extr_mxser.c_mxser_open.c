
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct mxser_port* driver_data; } ;
struct mxser_port {int port; int ioaddr; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mxser_port* ports; } ;


 int ENODEV ;
 int MXSER_PORTS ;
 int MXSER_PORTS_PER_BOARD ;
 TYPE_1__* mxser_boards ;
 int tty_port_open (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static int mxser_open(struct tty_struct *tty, struct file *filp)
{
 struct mxser_port *info;
 int line;

 line = tty->index;
 if (line == MXSER_PORTS)
  return 0;
 info = &mxser_boards[line / MXSER_PORTS_PER_BOARD].ports[line % MXSER_PORTS_PER_BOARD];
 if (!info->ioaddr)
  return -ENODEV;

 tty->driver_data = info;
 return tty_port_open(&info->port, tty, filp);
}
