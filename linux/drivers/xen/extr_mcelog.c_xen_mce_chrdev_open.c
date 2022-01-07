
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int EBUSY ;
 int O_EXCL ;
 int nonseekable_open (struct inode*,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ xen_mce_chrdev_open_count ;
 int xen_mce_chrdev_open_exclu ;
 int xen_mce_chrdev_state_lock ;

__attribute__((used)) static int xen_mce_chrdev_open(struct inode *inode, struct file *file)
{
 spin_lock(&xen_mce_chrdev_state_lock);

 if (xen_mce_chrdev_open_exclu ||
     (xen_mce_chrdev_open_count && (file->f_flags & O_EXCL))) {
  spin_unlock(&xen_mce_chrdev_state_lock);

  return -EBUSY;
 }

 if (file->f_flags & O_EXCL)
  xen_mce_chrdev_open_exclu = 1;
 xen_mce_chrdev_open_count++;

 spin_unlock(&xen_mce_chrdev_state_lock);

 return nonseekable_open(inode, file);
}
