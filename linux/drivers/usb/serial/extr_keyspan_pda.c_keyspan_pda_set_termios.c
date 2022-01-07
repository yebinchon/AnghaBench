
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {int dummy; } ;
struct tty_struct {int termios; } ;
struct ktermios {int dummy; } ;
typedef scalar_t__ speed_t ;


 int dev_dbg (int *,char*) ;
 scalar_t__ keyspan_pda_setbaud (struct usb_serial*,scalar_t__) ;
 int tty_encode_baud_rate (struct tty_struct*,scalar_t__,scalar_t__) ;
 scalar_t__ tty_get_baud_rate (struct tty_struct*) ;
 scalar_t__ tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_copy_hw (int *,struct ktermios*) ;

__attribute__((used)) static void keyspan_pda_set_termios(struct tty_struct *tty,
  struct usb_serial_port *port, struct ktermios *old_termios)
{
 struct usb_serial *serial = port->serial;
 speed_t speed;
 speed = tty_get_baud_rate(tty);
 speed = keyspan_pda_setbaud(serial, speed);

 if (speed == 0) {
  dev_dbg(&port->dev, "can't handle requested baud rate\n");

  speed = tty_termios_baud_rate(old_termios);
 }


 tty_termios_copy_hw(&tty->termios, old_termios);
 tty_encode_baud_rate(tty, speed, speed);
}
