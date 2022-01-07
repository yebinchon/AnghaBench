
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {unsigned int c_ospeed; int c_cflag; } ;
struct tty_struct {struct ktermios termios; } ;
struct serport {struct tty_struct* tty; } ;
struct serdev_controller {int dummy; } ;


 int CBAUD ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int tty_set_termios (struct tty_struct*,struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned int ttyport_set_baudrate(struct serdev_controller *ctrl, unsigned int speed)
{
 struct serport *serport = serdev_controller_get_drvdata(ctrl);
 struct tty_struct *tty = serport->tty;
 struct ktermios ktermios = tty->termios;

 ktermios.c_cflag &= ~CBAUD;
 tty_termios_encode_baud_rate(&ktermios, speed, speed);


 tty_set_termios(tty, &ktermios);
 return ktermios.c_ospeed;
}
