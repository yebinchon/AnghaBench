
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty_struct* tty; } ;
struct usb_serial_port {TYPE_1__ port; } ;
struct tty_struct {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int upd78f0730_tiocmset (struct tty_struct*,unsigned int,unsigned int) ;

__attribute__((used)) static void upd78f0730_dtr_rts(struct usb_serial_port *port, int on)
{
 struct tty_struct *tty = port->port.tty;
 unsigned int set = 0;
 unsigned int clear = 0;

 if (on)
  set = TIOCM_DTR | TIOCM_RTS;
 else
  clear = TIOCM_DTR | TIOCM_RTS;

 upd78f0730_tiocmset(tty, set, clear);
}
