
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wanted; int dev; } ;
typedef TYPE_1__ imm_struct ;


 int arbitration_lock ;
 int got_it (TYPE_1__*) ;
 scalar_t__ parport_claim (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void imm_wakeup(void *ref)
{
 imm_struct *dev = (imm_struct *) ref;
 unsigned long flags;

 spin_lock_irqsave(&arbitration_lock, flags);
 if (dev->wanted) {
  if (parport_claim(dev->dev) == 0) {
   got_it(dev);
   dev->wanted = 0;
  }
 }
 spin_unlock_irqrestore(&arbitration_lock, flags);
}
