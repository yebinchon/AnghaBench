
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_pipe_dev {int dummy; } ;
struct goldfish_pipe {int flags; int wake_queue; } ;


 int BIT_CLOSED_ON_HOST ;
 int BIT_WAKE_ON_READ ;
 int BIT_WAKE_ON_WRITE ;
 int PIPE_WAKE_CLOSED ;
 int PIPE_WAKE_READ ;
 int PIPE_WAKE_WRITE ;
 int clear_bit (int ,int*) ;
 struct goldfish_pipe* signalled_pipes_pop_front (struct goldfish_pipe_dev*,int*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void goldfish_interrupt_task(unsigned long dev_addr)
{

 struct goldfish_pipe_dev *dev = (struct goldfish_pipe_dev *)dev_addr;
 struct goldfish_pipe *pipe;
 int wakes;

 while ((pipe = signalled_pipes_pop_front(dev, &wakes)) != ((void*)0)) {
  if (wakes & PIPE_WAKE_CLOSED) {
   pipe->flags = 1 << BIT_CLOSED_ON_HOST;
  } else {
   if (wakes & PIPE_WAKE_READ)
    clear_bit(BIT_WAKE_ON_READ, &pipe->flags);
   if (wakes & PIPE_WAKE_WRITE)
    clear_bit(BIT_WAKE_ON_WRITE, &pipe->flags);
  }




  wake_up_interruptible(&pipe->wake_queue);
 }
}
