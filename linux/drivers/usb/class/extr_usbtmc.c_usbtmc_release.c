
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtmc_file_data {TYPE_1__* data; int file_elem; } ;
struct inode {int dummy; } ;
struct file {struct usbtmc_file_data* private_data; } ;
struct TYPE_2__ {int kref; int io_mutex; int dev_lock; } ;


 int kfree (struct usbtmc_file_data*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usbtmc_delete ;

__attribute__((used)) static int usbtmc_release(struct inode *inode, struct file *file)
{
 struct usbtmc_file_data *file_data = file->private_data;


 mutex_lock(&file_data->data->io_mutex);
 spin_lock_irq(&file_data->data->dev_lock);

 list_del(&file_data->file_elem);

 spin_unlock_irq(&file_data->data->dev_lock);
 mutex_unlock(&file_data->data->io_mutex);

 kref_put(&file_data->data->kref, usbtmc_delete);
 file_data->data = ((void*)0);
 kfree(file_data);
 return 0;
}
