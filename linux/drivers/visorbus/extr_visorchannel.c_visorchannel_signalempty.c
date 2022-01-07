
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int remove_lock; int needs_lock; } ;


 int queue_empty (struct visorchannel*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool visorchannel_signalempty(struct visorchannel *channel, u32 queue)
{
 bool rc;
 unsigned long flags;

 if (!channel->needs_lock)
  return queue_empty(channel, queue);
 spin_lock_irqsave(&channel->remove_lock, flags);
 rc = queue_empty(channel, queue);
 spin_unlock_irqrestore(&channel->remove_lock, flags);
 return rc;
}
