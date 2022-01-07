
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct procdata {int rd_queue; } ;
struct log_data {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
typedef int poll_table ;
struct TYPE_3__ {struct procdata* proclog; } ;
typedef TYPE_1__ hysdn_card ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 TYPE_1__* PDE_DATA (int ) ;
 int file_inode (struct file*) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t
hysdn_log_poll(struct file *file, poll_table *wait)
{
 __poll_t mask = 0;
 hysdn_card *card = PDE_DATA(file_inode(file));
 struct procdata *pd = card->proclog;

 if ((file->f_mode & (FMODE_READ | FMODE_WRITE)) == FMODE_WRITE)
  return (mask);

 poll_wait(file, &(pd->rd_queue), wait);

 if (*((struct log_data **) file->private_data))
  mask |= EPOLLIN | EPOLLRDNORM;

 return mask;
}
