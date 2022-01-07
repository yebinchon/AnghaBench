
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct goldfish_pipe_dev {int lock; int ** pipes; } ;
struct goldfish_pipe {size_t id; scalar_t__ command_buffer; struct goldfish_pipe_dev* dev; } ;
struct file {struct goldfish_pipe* private_data; } ;


 int PIPE_CMD_CLOSE ;
 int free_page (unsigned long) ;
 int goldfish_pipe_cmd (struct goldfish_pipe*,int ) ;
 int kfree (struct goldfish_pipe*) ;
 int signalled_pipes_remove_locked (struct goldfish_pipe_dev*,struct goldfish_pipe*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int goldfish_pipe_release(struct inode *inode, struct file *filp)
{
 unsigned long flags;
 struct goldfish_pipe *pipe = filp->private_data;
 struct goldfish_pipe_dev *dev = pipe->dev;


 goldfish_pipe_cmd(pipe, PIPE_CMD_CLOSE);

 spin_lock_irqsave(&dev->lock, flags);
 dev->pipes[pipe->id] = ((void*)0);
 signalled_pipes_remove_locked(dev, pipe);
 spin_unlock_irqrestore(&dev->lock, flags);

 filp->private_data = ((void*)0);
 free_page((unsigned long)pipe->command_buffer);
 kfree(pipe);
 return 0;
}
