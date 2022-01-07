
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct goldfish_pipe_dev {struct goldfish_pipe* first_signalled_pipe; } ;
struct goldfish_pipe {struct goldfish_pipe* next_signalled; TYPE_1__* prev_signalled; } ;
struct TYPE_2__ {struct goldfish_pipe* next_signalled; } ;



__attribute__((used)) static void signalled_pipes_remove_locked(struct goldfish_pipe_dev *dev,
       struct goldfish_pipe *pipe)
{
 if (pipe->prev_signalled)
  pipe->prev_signalled->next_signalled = pipe->next_signalled;
 if (pipe->next_signalled)
  pipe->next_signalled->prev_signalled = pipe->prev_signalled;
 if (pipe == dev->first_signalled_pipe)
  dev->first_signalled_pipe = pipe->next_signalled;
 pipe->prev_signalled = ((void*)0);
 pipe->next_signalled = ((void*)0);
}
