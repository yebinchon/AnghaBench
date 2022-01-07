
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcs_poll_data {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct vcs_poll_data* private_data; } ;


 int vcs_poll_data_free (struct vcs_poll_data*) ;

__attribute__((used)) static int vcs_release(struct inode *inode, struct file *file)
{
 struct vcs_poll_data *poll = file->private_data;

 if (poll)
  vcs_poll_data_free(poll);
 return 0;
}
