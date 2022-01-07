
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvcs_struct* driver_data; } ;
struct hvcs_struct {int lock; int vdev; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static void hvcs_throttle(struct tty_struct *tty)
{
 struct hvcs_struct *hvcsd = tty->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&hvcsd->lock, flags);
 vio_disable_interrupts(hvcsd->vdev);
 spin_unlock_irqrestore(&hvcsd->lock, flags);
}
