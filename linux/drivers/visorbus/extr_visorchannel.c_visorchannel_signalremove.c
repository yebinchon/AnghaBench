
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int remove_lock; scalar_t__ needs_lock; } ;


 int signalremove_inner (struct visorchannel*,int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int visorchannel_signalremove(struct visorchannel *channel, u32 queue,
         void *msg)
{
 int rc;
 unsigned long flags;

 if (channel->needs_lock) {
  spin_lock_irqsave(&channel->remove_lock, flags);
  rc = signalremove_inner(channel, queue, msg);
  spin_unlock_irqrestore(&channel->remove_lock, flags);
 } else {
  rc = signalremove_inner(channel, queue, msg);
 }

 return rc;
}
