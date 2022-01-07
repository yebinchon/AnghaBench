
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int name; struct slgt_info* driver_data; } ;
struct TYPE_2__ {int open_wait; int mutex; int lock; int * tty; scalar_t__ count; } ;
struct slgt_info {TYPE_1__ port; int device_name; } ;


 int DBGINFO (char*) ;
 int flush_buffer (struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ sanity_check (struct slgt_info*,int ,char*) ;
 int shutdown (struct slgt_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_set_active (TYPE_1__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hangup(struct tty_struct *tty)
{
 struct slgt_info *info = tty->driver_data;
 unsigned long flags;

 if (sanity_check(info, tty->name, "hangup"))
  return;
 DBGINFO(("%s hangup\n", info->device_name));

 flush_buffer(tty);

 mutex_lock(&info->port.mutex);
 shutdown(info);

 spin_lock_irqsave(&info->port.lock, flags);
 info->port.count = 0;
 info->port.tty = ((void*)0);
 spin_unlock_irqrestore(&info->port.lock, flags);
 tty_port_set_active(&info->port, 0);
 mutex_unlock(&info->port.mutex);

 wake_up_interruptible(&info->port.open_wait);
}
