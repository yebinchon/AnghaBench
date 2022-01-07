
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct configfs_buffer* private_data; } ;
struct configfs_buffer {int mutex; scalar_t__ page; int owner; } ;


 int free_page (unsigned long) ;
 int kfree (struct configfs_buffer*) ;
 int module_put (int ) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int configfs_release(struct inode *inode, struct file *filp)
{
 struct configfs_buffer *buffer = filp->private_data;

 module_put(buffer->owner);
 if (buffer->page)
  free_page((unsigned long)buffer->page);
 mutex_destroy(&buffer->mutex);
 kfree(buffer);
 return 0;
}
