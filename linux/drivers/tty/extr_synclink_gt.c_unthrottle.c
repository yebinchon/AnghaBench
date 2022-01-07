
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; int signals; scalar_t__ x_char; int device_name; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int DBGINFO (char*) ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int START_CHAR (struct tty_struct*) ;
 int SerialSignal_RTS ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int send_xchar (struct tty_struct*,int ) ;
 int set_signals (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unthrottle(struct tty_struct * tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "unthrottle"))
  return;
 DBGINFO(("%s unthrottle\n", info->device_name));
 if (I_IXOFF(tty)) {
  if (info->x_char)
   info->x_char = 0;
  else
   send_xchar(tty, START_CHAR(tty));
 }
  if (C_CRTSCTS(tty)) {
  spin_lock_irqsave(&info->lock,flags);
  info->signals |= SerialSignal_RTS;
   set_signals(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }
}
