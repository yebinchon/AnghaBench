
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_pipe {int flags; int wake_queue; } ;
struct file {struct goldfish_pipe* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int BIT_CLOSED_ON_HOST ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int ERESTARTSYS ;
 int PIPE_CMD_POLL ;
 int PIPE_POLL_HUP ;
 int PIPE_POLL_IN ;
 int PIPE_POLL_OUT ;
 int goldfish_pipe_cmd (struct goldfish_pipe*,int ) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static __poll_t goldfish_pipe_poll(struct file *filp, poll_table *wait)
{
 struct goldfish_pipe *pipe = filp->private_data;
 __poll_t mask = 0;
 int status;

 poll_wait(filp, &pipe->wake_queue, wait);

 status = goldfish_pipe_cmd(pipe, PIPE_CMD_POLL);
 if (status < 0)
  return -ERESTARTSYS;

 if (status & PIPE_POLL_IN)
  mask |= EPOLLIN | EPOLLRDNORM;
 if (status & PIPE_POLL_OUT)
  mask |= EPOLLOUT | EPOLLWRNORM;
 if (status & PIPE_POLL_HUP)
  mask |= EPOLLHUP;
 if (test_bit(BIT_CLOSED_ON_HOST, &pipe->flags))
  mask |= EPOLLERR;

 return mask;
}
