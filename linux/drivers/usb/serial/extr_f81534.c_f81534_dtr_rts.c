
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int f81534_update_mctrl (struct usb_serial_port*,int,int) ;

__attribute__((used)) static void f81534_dtr_rts(struct usb_serial_port *port, int on)
{
 if (on)
  f81534_update_mctrl(port, TIOCM_DTR | TIOCM_RTS, 0);
 else
  f81534_update_mctrl(port, 0, TIOCM_DTR | TIOCM_RTS);
}
