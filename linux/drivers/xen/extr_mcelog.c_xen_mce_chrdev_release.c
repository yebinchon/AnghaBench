
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int xen_mce_chrdev_open_count ;
 scalar_t__ xen_mce_chrdev_open_exclu ;
 int xen_mce_chrdev_state_lock ;

__attribute__((used)) static int xen_mce_chrdev_release(struct inode *inode, struct file *file)
{
 spin_lock(&xen_mce_chrdev_state_lock);

 xen_mce_chrdev_open_count--;
 xen_mce_chrdev_open_exclu = 0;

 spin_unlock(&xen_mce_chrdev_state_lock);

 return 0;
}
