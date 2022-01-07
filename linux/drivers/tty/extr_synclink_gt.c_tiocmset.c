
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct slgt_info* driver_data; } ;
struct slgt_info {int lock; int signals; int device_name; } ;


 int DBGINFO (char*) ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int set_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tiocmset(struct tty_struct *tty,
      unsigned int set, unsigned int clear)
{
 struct slgt_info *info = tty->driver_data;
  unsigned long flags;

 DBGINFO(("%s tiocmset(%x,%x)\n", info->device_name, set, clear));

 if (set & TIOCM_RTS)
  info->signals |= SerialSignal_RTS;
 if (set & TIOCM_DTR)
  info->signals |= SerialSignal_DTR;
 if (clear & TIOCM_RTS)
  info->signals &= ~SerialSignal_RTS;
 if (clear & TIOCM_DTR)
  info->signals &= ~SerialSignal_DTR;

 spin_lock_irqsave(&info->lock,flags);
  set_signals(info);
 spin_unlock_irqrestore(&info->lock,flags);
 return 0;
}
