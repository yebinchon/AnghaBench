
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct serial_state* driver_data; } ;
struct serial_state {unsigned char MCR; } ;
struct TYPE_2__ {unsigned char pra; } ;


 int EIO ;
 int ENODEV ;
 unsigned char SER_CTS ;
 unsigned char SER_DCD ;
 unsigned char SER_DSR ;
 unsigned char SER_DTR ;
 unsigned char SER_RTS ;
 int TIOCM_CAR ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 TYPE_1__ ciab ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;
 scalar_t__ tty_io_error (struct tty_struct*) ;

__attribute__((used)) static int rs_tiocmget(struct tty_struct *tty)
{
 struct serial_state *info = tty->driver_data;
 unsigned char control, status;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_ioctl"))
  return -ENODEV;
 if (tty_io_error(tty))
  return -EIO;

 control = info->MCR;
 local_irq_save(flags);
 status = ciab.pra;
 local_irq_restore(flags);
 return ((control & SER_RTS) ? TIOCM_RTS : 0)
  | ((control & SER_DTR) ? TIOCM_DTR : 0)
  | (!(status & SER_DCD) ? TIOCM_CAR : 0)
  | (!(status & SER_DSR) ? TIOCM_DSR : 0)
  | (!(status & SER_CTS) ? TIOCM_CTS : 0);
}
