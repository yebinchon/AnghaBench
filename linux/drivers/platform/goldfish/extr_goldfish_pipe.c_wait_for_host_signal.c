
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct goldfish_pipe {int flags; int wake_queue; } ;


 int BIT_CLOSED_ON_HOST ;
 int BIT_WAKE_ON_READ ;
 int BIT_WAKE_ON_WRITE ;
 int EIO ;
 int ERESTARTSYS ;
 int PIPE_CMD_WAKE_ON_READ ;
 int PIPE_CMD_WAKE_ON_WRITE ;
 int goldfish_pipe_cmd (struct goldfish_pipe*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int wait_for_host_signal(struct goldfish_pipe *pipe, int is_write)
{
 u32 wake_bit = is_write ? BIT_WAKE_ON_WRITE : BIT_WAKE_ON_READ;

 set_bit(wake_bit, &pipe->flags);


 goldfish_pipe_cmd(pipe,
  is_write ? PIPE_CMD_WAKE_ON_WRITE : PIPE_CMD_WAKE_ON_READ);

 while (test_bit(wake_bit, &pipe->flags)) {
  if (wait_event_interruptible(pipe->wake_queue,
          !test_bit(wake_bit, &pipe->flags)))
   return -ERESTARTSYS;

  if (test_bit(BIT_CLOSED_ON_HOST, &pipe->flags))
   return -EIO;
 }

 return 0;
}
