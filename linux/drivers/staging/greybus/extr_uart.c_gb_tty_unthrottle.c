
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cflag; } ;
struct tty_struct {TYPE_1__ termios; struct gb_tty* driver_data; } ;
struct gb_tty {int ctrlout; } ;


 int CRTSCTS ;
 int GB_UART_CTRL_RTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 unsigned char START_CHAR (struct tty_struct*) ;
 int gb_tty_write (struct tty_struct*,unsigned char*,int) ;
 int send_control (struct gb_tty*,int ) ;

__attribute__((used)) static void gb_tty_unthrottle(struct tty_struct *tty)
{
 struct gb_tty *gb_tty = tty->driver_data;
 unsigned char start_char;
 int retval;

 if (I_IXOFF(tty)) {
  start_char = START_CHAR(tty);
  retval = gb_tty_write(tty, &start_char, 1);
  if (retval <= 0)
   return;
 }

 if (tty->termios.c_cflag & CRTSCTS) {
  gb_tty->ctrlout |= GB_UART_CTRL_RTS;
  retval = send_control(gb_tty, gb_tty->ctrlout);
 }
}
