
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipw_tty* driver_data; } ;
struct TYPE_2__ {int count; } ;
struct ipw_tty {TYPE_1__ port; } ;


 int EINVAL ;
 int ENODEV ;
 int get_control_lines (struct ipw_tty*) ;

__attribute__((used)) static int ipw_tiocmget(struct tty_struct *linux_tty)
{
 struct ipw_tty *tty = linux_tty->driver_data;


 if (!tty)
  return -ENODEV;

 if (!tty->port.count)
  return -EINVAL;

 return get_control_lines(tty);
}
