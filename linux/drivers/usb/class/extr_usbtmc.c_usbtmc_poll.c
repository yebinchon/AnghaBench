
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtmc_file_data {int err_lock; scalar_t__ out_status; scalar_t__ in_status; int in_anchor; int submitted; int srq_asserted; struct usbtmc_device_data* data; } ;
struct usbtmc_device_data {int io_mutex; TYPE_1__* intf; int waitq; scalar_t__ zombie; } ;
struct file {struct usbtmc_file_data* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int dev; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ usb_anchor_empty (int *) ;

__attribute__((used)) static __poll_t usbtmc_poll(struct file *file, poll_table *wait)
{
 struct usbtmc_file_data *file_data = file->private_data;
 struct usbtmc_device_data *data = file_data->data;
 __poll_t mask;

 mutex_lock(&data->io_mutex);

 if (data->zombie) {
  mask = EPOLLHUP | EPOLLERR;
  goto no_poll;
 }

 poll_wait(file, &data->waitq, wait);




 mask = 0;
 if (atomic_read(&file_data->srq_asserted))
  mask |= EPOLLPRI;





 if (usb_anchor_empty(&file_data->submitted))
  mask |= (EPOLLOUT | EPOLLWRNORM);
 if (!usb_anchor_empty(&file_data->in_anchor))
  mask |= (EPOLLIN | EPOLLRDNORM);

 spin_lock_irq(&file_data->err_lock);
 if (file_data->in_status || file_data->out_status)
  mask |= EPOLLERR;
 spin_unlock_irq(&file_data->err_lock);

 dev_dbg(&data->intf->dev, "poll mask = %x\n", mask);

no_poll:
 mutex_unlock(&data->io_mutex);
 return mask;
}
