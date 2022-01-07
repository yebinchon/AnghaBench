
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_file_data {scalar_t__ in_urbs_used; int err_lock; scalar_t__ out_transfer_size; scalar_t__ out_status; scalar_t__ in_transfer_size; scalar_t__ in_status; int in_anchor; int submitted; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_kill_anchored_urbs (int *) ;
 int usb_scuttle_anchored_urbs (int *) ;

__attribute__((used)) static int usbtmc_ioctl_cleanup_io(struct usbtmc_file_data *file_data)
{
 usb_kill_anchored_urbs(&file_data->submitted);
 usb_scuttle_anchored_urbs(&file_data->in_anchor);
 spin_lock_irq(&file_data->err_lock);
 file_data->in_status = 0;
 file_data->in_transfer_size = 0;
 file_data->out_status = 0;
 file_data->out_transfer_size = 0;
 spin_unlock_irq(&file_data->err_lock);

 file_data->in_urbs_used = 0;
 return 0;
}
