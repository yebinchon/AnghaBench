
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* driver; struct slgt_info* driver_data; } ;
struct slgt_info {int signals; int lock; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int name; } ;


 int CBAUD ;
 int CRTSCTS ;
 scalar_t__ C_BAUD (struct tty_struct*) ;
 int C_CRTSCTS (struct tty_struct*) ;
 int DBGINFO (char*) ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int change_params (struct slgt_info*) ;
 int set_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_throttled (struct tty_struct*) ;
 int tx_release (struct tty_struct*) ;

__attribute__((used)) static void set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 DBGINFO(("%s set_termios\n", tty->driver->name));

 change_params(info);


 if ((old_termios->c_cflag & CBAUD) && !C_BAUD(tty)) {
  info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
  spin_lock_irqsave(&info->lock,flags);
  set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }


 if (!(old_termios->c_cflag & CBAUD) && C_BAUD(tty)) {
  info->signals |= SerialSignal_DTR;
  if (!C_CRTSCTS(tty) || !tty_throttled(tty))
   info->signals |= SerialSignal_RTS;
  spin_lock_irqsave(&info->lock,flags);
   set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }


 if ((old_termios->c_cflag & CRTSCTS) && !C_CRTSCTS(tty)) {
  tty->hw_stopped = 0;
  tx_release(tty);
 }
}
