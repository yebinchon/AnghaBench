
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int cdev; int port; scalar_t__ line_pos; } ;


 int get_ccwdev_lock (int ) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ tty_port_initialized (int *) ;
 int tty_port_set_initialized (int *,int) ;

__attribute__((used)) static int raw3215_startup(struct raw3215_info *raw)
{
 unsigned long flags;

 if (tty_port_initialized(&raw->port))
  return 0;
 raw->line_pos = 0;
 tty_port_set_initialized(&raw->port, 1);
 spin_lock_irqsave(get_ccwdev_lock(raw->cdev), flags);
 raw3215_try_io(raw);
 spin_unlock_irqrestore(get_ccwdev_lock(raw->cdev), flags);

 return 0;
}
