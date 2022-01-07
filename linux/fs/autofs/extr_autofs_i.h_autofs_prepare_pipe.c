
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_mode; int f_flags; } ;
struct TYPE_2__ {int i_mode; } ;


 int EINVAL ;
 int FMODE_CAN_WRITE ;
 int O_DIRECT ;
 int O_NONBLOCK ;
 int S_ISFIFO (int ) ;
 TYPE_1__* file_inode (struct file*) ;

__attribute__((used)) static inline int autofs_prepare_pipe(struct file *pipe)
{
 if (!(pipe->f_mode & FMODE_CAN_WRITE))
  return -EINVAL;
 if (!S_ISFIFO(file_inode(pipe)->i_mode))
  return -EINVAL;

 pipe->f_flags |= O_DIRECT;

 pipe->f_flags &= ~O_NONBLOCK;
 return 0;
}
