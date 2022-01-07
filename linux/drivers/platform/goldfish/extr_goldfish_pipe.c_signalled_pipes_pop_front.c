
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_pipe_dev {int lock; struct goldfish_pipe* first_signalled_pipe; } ;
struct goldfish_pipe {int signalled_flags; struct goldfish_pipe* next_signalled; int * prev_signalled; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct goldfish_pipe *signalled_pipes_pop_front(
  struct goldfish_pipe_dev *dev, int *wakes)
{
 struct goldfish_pipe *pipe;
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);

 pipe = dev->first_signalled_pipe;
 if (pipe) {
  *wakes = pipe->signalled_flags;
  pipe->signalled_flags = 0;






  dev->first_signalled_pipe = pipe->next_signalled;
  if (dev->first_signalled_pipe)
   dev->first_signalled_pipe->prev_signalled = ((void*)0);
  pipe->next_signalled = ((void*)0);
 }

 spin_unlock_irqrestore(&dev->lock, flags);
 return pipe;
}
