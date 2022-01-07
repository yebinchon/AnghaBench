
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_file_data {int err_lock; scalar_t__ out_transfer_size; scalar_t__ out_status; scalar_t__ in_urbs_used; scalar_t__ in_transfer_size; scalar_t__ in_status; struct usbtmc_device_data* data; int closing; } ;
struct usbtmc_device_data {int io_mutex; int waitq; } ;
struct file {struct usbtmc_file_data* private_data; } ;
typedef int fl_owner_t ;


 int ENODEV ;
 int atomic_set (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usbtmc_draw_down (struct usbtmc_file_data*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int usbtmc_flush(struct file *file, fl_owner_t id)
{
 struct usbtmc_file_data *file_data;
 struct usbtmc_device_data *data;

 file_data = file->private_data;
 if (file_data == ((void*)0))
  return -ENODEV;

 atomic_set(&file_data->closing, 1);
 data = file_data->data;


 mutex_lock(&data->io_mutex);

 usbtmc_draw_down(file_data);

 spin_lock_irq(&file_data->err_lock);
 file_data->in_status = 0;
 file_data->in_transfer_size = 0;
 file_data->in_urbs_used = 0;
 file_data->out_status = 0;
 file_data->out_transfer_size = 0;
 spin_unlock_irq(&file_data->err_lock);

 wake_up_interruptible_all(&data->waitq);
 mutex_unlock(&data->io_mutex);

 return 0;
}
