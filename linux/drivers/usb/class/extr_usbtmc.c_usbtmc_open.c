
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_file_data {char term_char; int eom_val; int file_elem; scalar_t__ auto_abort; scalar_t__ term_char_enabled; int timeout; int closing; struct usbtmc_device_data* data; int wait_bulk_in; int in_anchor; int submitted; int limit_write_sem; int err_lock; } ;
struct usbtmc_device_data {int io_mutex; int dev_lock; int file_list; int kref; } ;
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct usbtmc_file_data* private_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_URBS_IN_FLIGHT ;
 int USBTMC_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int iminor (struct inode*) ;
 int init_usb_anchor (int *) ;
 int init_waitqueue_head (int *) ;
 int kref_get (int *) ;
 struct usbtmc_file_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ) ;
 int sema_init (int *,int ) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct usb_interface* usb_find_interface (int *,int ) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;
 int usbtmc_driver ;

__attribute__((used)) static int usbtmc_open(struct inode *inode, struct file *filp)
{
 struct usb_interface *intf;
 struct usbtmc_device_data *data;
 struct usbtmc_file_data *file_data;

 intf = usb_find_interface(&usbtmc_driver, iminor(inode));
 if (!intf) {
  pr_err("can not find device for minor %d", iminor(inode));
  return -ENODEV;
 }

 file_data = kzalloc(sizeof(*file_data), GFP_KERNEL);
 if (!file_data)
  return -ENOMEM;

 spin_lock_init(&file_data->err_lock);
 sema_init(&file_data->limit_write_sem, MAX_URBS_IN_FLIGHT);
 init_usb_anchor(&file_data->submitted);
 init_usb_anchor(&file_data->in_anchor);
 init_waitqueue_head(&file_data->wait_bulk_in);

 data = usb_get_intfdata(intf);

 kref_get(&data->kref);

 mutex_lock(&data->io_mutex);
 file_data->data = data;

 atomic_set(&file_data->closing, 0);

 file_data->timeout = USBTMC_TIMEOUT;
 file_data->term_char = '\n';
 file_data->term_char_enabled = 0;
 file_data->auto_abort = 0;
 file_data->eom_val = 1;

 INIT_LIST_HEAD(&file_data->file_elem);
 spin_lock_irq(&data->dev_lock);
 list_add_tail(&file_data->file_elem, &data->file_list);
 spin_unlock_irq(&data->dev_lock);
 mutex_unlock(&data->io_mutex);


 filp->private_data = file_data;

 return 0;
}
