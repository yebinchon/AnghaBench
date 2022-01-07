
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; } ;
struct serial_struct {int baud_base; int line; int type; } ;
struct TYPE_2__ {int count; } ;
struct ipw_tty {int index; TYPE_1__ port; } ;


 int EINVAL ;
 int ENODEV ;
 int PORT_UNKNOWN ;

__attribute__((used)) static int ipwireless_get_serial_info(struct tty_struct *linux_tty,
          struct serial_struct *ss)
{
 struct ipw_tty *tty = linux_tty->driver_data;

 if (!tty)
  return -ENODEV;

 if (!tty->port.count)
  return -EINVAL;

 ss->type = PORT_UNKNOWN;
 ss->line = tty->index;
 ss->baud_base = 115200;
 return 0;
}
