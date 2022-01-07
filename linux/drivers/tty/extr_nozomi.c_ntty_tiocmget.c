
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct ctrl_ul {scalar_t__ DTR; scalar_t__ RTS; } ;
struct ctrl_dl {scalar_t__ CTS; scalar_t__ DSR; scalar_t__ RI; scalar_t__ DCD; } ;
struct port {struct ctrl_ul ctrl_ul; struct ctrl_dl ctrl_dl; } ;


 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RNG ;
 int TIOCM_RTS ;

__attribute__((used)) static int ntty_tiocmget(struct tty_struct *tty)
{
 const struct port *port = tty->driver_data;
 const struct ctrl_dl *ctrl_dl = &port->ctrl_dl;
 const struct ctrl_ul *ctrl_ul = &port->ctrl_ul;



 return (ctrl_ul->RTS ? TIOCM_RTS : 0)
  | (ctrl_ul->DTR ? TIOCM_DTR : 0)
  | (ctrl_dl->DCD ? TIOCM_CAR : 0)
  | (ctrl_dl->RI ? TIOCM_RNG : 0)
  | (ctrl_dl->DSR ? TIOCM_DSR : 0)
  | (ctrl_dl->CTS ? TIOCM_CTS : 0);
}
