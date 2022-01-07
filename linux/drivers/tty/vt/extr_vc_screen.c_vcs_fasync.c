
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcs_poll_data {int fasync; } ;
struct file {struct vcs_poll_data* private_data; } ;


 int ENOMEM ;
 int fasync_helper (int,struct file*,int,int *) ;
 struct vcs_poll_data* vcs_poll_data_get (struct file*) ;

__attribute__((used)) static int
vcs_fasync(int fd, struct file *file, int on)
{
 struct vcs_poll_data *poll = file->private_data;

 if (!poll) {

  if (!on)
   return 0;
  poll = vcs_poll_data_get(file);
  if (!poll)
   return -ENOMEM;
 }

 return fasync_helper(fd, file, on, &poll->fasync);
}
