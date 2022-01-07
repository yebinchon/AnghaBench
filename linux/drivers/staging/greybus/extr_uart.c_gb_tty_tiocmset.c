
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tty_struct {struct gb_tty* driver_data; } ;
struct gb_tty {unsigned int ctrlout; } ;


 unsigned int GB_UART_CTRL_DTR ;
 unsigned int GB_UART_CTRL_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int send_control (struct gb_tty*,unsigned int) ;

__attribute__((used)) static int gb_tty_tiocmset(struct tty_struct *tty, unsigned int set,
      unsigned int clear)
{
 struct gb_tty *gb_tty = tty->driver_data;
 u8 newctrl = gb_tty->ctrlout;

 set = (set & TIOCM_DTR ? GB_UART_CTRL_DTR : 0) |
       (set & TIOCM_RTS ? GB_UART_CTRL_RTS : 0);
 clear = (clear & TIOCM_DTR ? GB_UART_CTRL_DTR : 0) |
  (clear & TIOCM_RTS ? GB_UART_CTRL_RTS : 0);

 newctrl = (newctrl & ~clear) | set;
 if (gb_tty->ctrlout == newctrl)
  return 0;

 gb_tty->ctrlout = newctrl;
 return send_control(gb_tty, newctrl);
}
