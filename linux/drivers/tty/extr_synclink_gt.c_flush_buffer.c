
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct slgt_info {int lock; scalar_t__ tx_count; int device_name; } ;


 int DBGINFO (char*) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void flush_buffer(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "flush_buffer"))
  return;
 DBGINFO(("%s flush_buffer\n", info->device_name));

 spin_lock_irqsave(&info->lock, flags);
 info->tx_count = 0;
 spin_unlock_irqrestore(&info->lock, flags);

 tty_wakeup(tty);
}
