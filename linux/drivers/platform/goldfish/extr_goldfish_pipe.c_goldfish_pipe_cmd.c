
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goldfish_pipe {int lock; } ;
typedef enum PipeCmdCode { ____Placeholder_PipeCmdCode } PipeCmdCode ;


 int PIPE_ERROR_IO ;
 int goldfish_pipe_cmd_locked (struct goldfish_pipe*,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int goldfish_pipe_cmd(struct goldfish_pipe *pipe, enum PipeCmdCode cmd)
{
 int status;

 if (mutex_lock_interruptible(&pipe->lock))
  return PIPE_ERROR_IO;
 status = goldfish_pipe_cmd_locked(pipe, cmd);
 mutex_unlock(&pipe->lock);
 return status;
}
