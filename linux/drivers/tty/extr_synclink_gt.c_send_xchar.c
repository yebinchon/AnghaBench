
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {char x_char; int lock; int tx_enabled; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_start (struct slgt_info*) ;

__attribute__((used)) static void send_xchar(struct tty_struct *tty, char ch)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "send_xchar"))
  return;
 DBGINFO(("%s send_xchar(%d)\n", info->device_name, ch));
 info->x_char = ch;
 if (ch) {
  spin_lock_irqsave(&info->lock,flags);
  if (!info->tx_enabled)
    tx_start(info);
  spin_unlock_irqrestore(&info->lock,flags);
 }
}
