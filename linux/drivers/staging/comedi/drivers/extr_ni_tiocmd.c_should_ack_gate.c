
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {int lock; TYPE_2__* mite_chan; TYPE_1__* counter_dev; } ;
struct TYPE_4__ {int dir; } ;
struct TYPE_3__ {int variant; } ;


 int COMEDI_INPUT ;
 int mite_done (TYPE_2__*) ;



 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int should_ack_gate(struct ni_gpct *counter)
{
 unsigned long flags;
 int retval = 0;

 switch (counter->counter_dev->variant) {
 case 128:
 case 130:




  return 1;
 case 129:






  spin_lock_irqsave(&counter->lock, flags);
  {
   if (!counter->mite_chan ||
       counter->mite_chan->dir != COMEDI_INPUT ||
       (mite_done(counter->mite_chan))) {
    retval = 1;
   }
  }
  spin_unlock_irqrestore(&counter->lock, flags);
  break;
 }
 return retval;
}
