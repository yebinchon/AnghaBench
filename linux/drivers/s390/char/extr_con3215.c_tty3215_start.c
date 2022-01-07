
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int flags; int cdev; } ;


 int RAW3215_STOPPED ;
 int get_ccwdev_lock (int ) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void tty3215_start(struct tty_struct *tty)
{
 struct raw3215_info *raw;
 unsigned long flags;

 raw = (struct raw3215_info *) tty->driver_data;
 if (raw->flags & RAW3215_STOPPED) {
  spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
  raw->flags &= ~RAW3215_STOPPED;
  raw3215_try_io(raw);
  spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);
 }
}
