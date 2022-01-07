
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int cp210x_tiocmset_port (struct usb_serial_port*,int,int) ;

__attribute__((used)) static void cp210x_dtr_rts(struct usb_serial_port *p, int on)
{
 if (on)
  cp210x_tiocmset_port(p, TIOCM_DTR|TIOCM_RTS, 0);
 else
  cp210x_tiocmset_port(p, 0, TIOCM_DTR|TIOCM_RTS);
}
