
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int c_cflag; } ;
struct tty_struct {scalar_t__ hw_stopped; TYPE_1__ termios; struct serial_state* driver_data; } ;
struct serial_state {int MCR; int open_wait; } ;
struct ktermios {unsigned int c_cflag; } ;


 unsigned int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int C_CRTSCTS (struct tty_struct*) ;
 int SER_DTR ;
 int SER_RTS ;
 int change_speed (struct tty_struct*,struct serial_state*,struct ktermios*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rs_start (struct tty_struct*) ;
 int rtsdtr_ctrl (int) ;
 int tty_throttled (struct tty_struct*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct serial_state *info = tty->driver_data;
 unsigned long flags;
 unsigned int cflag = tty->termios.c_cflag;

 change_speed(tty, info, old_termios);


 if ((old_termios->c_cflag & CBAUD) && !(cflag & CBAUD)) {
  info->MCR &= ~(SER_DTR|SER_RTS);
  local_irq_save(flags);
  rtsdtr_ctrl(info->MCR);
  local_irq_restore(flags);
 }


 if (!(old_termios->c_cflag & CBAUD) && (cflag & CBAUD)) {
  info->MCR |= SER_DTR;
  if (!C_CRTSCTS(tty) || !tty_throttled(tty))
   info->MCR |= SER_RTS;
  local_irq_save(flags);
  rtsdtr_ctrl(info->MCR);
  local_irq_restore(flags);
 }


 if ((old_termios->c_cflag & CRTSCTS) && !C_CRTSCTS(tty)) {
  tty->hw_stopped = 0;
  rs_start(tty);
 }
}
