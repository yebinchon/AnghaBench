
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {scalar_t__ state; int dev; int filelist; } ;
struct usb_dev_state {int interface_allowed_mask; int list; int cred; int disc_pid; int wait_for_resume; int wait; int memory_list; int async_completed; int async_pending; int lock; struct file* file; struct usb_device* dev; } ;
struct inode {int i_rdev; } ;
struct file {struct usb_dev_state* private_data; } ;
struct TYPE_4__ {int comm; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ USB_DEVICE_MAJOR ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 TYPE_1__* current ;
 int get_current_cred () ;
 int get_pid (int ) ;
 scalar_t__ imajor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct usb_dev_state*) ;
 struct usb_dev_state* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int smp_wmb () ;
 int snoop (int *,char*,int ,int ) ;
 int spin_lock_init (int *) ;
 int task_pid (TYPE_1__*) ;
 int task_pid_nr (TYPE_1__*) ;
 int usb_autoresume_device (struct usb_device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;
 struct usb_device* usbdev_lookup_by_devt (int ) ;

__attribute__((used)) static int usbdev_open(struct inode *inode, struct file *file)
{
 struct usb_device *dev = ((void*)0);
 struct usb_dev_state *ps;
 int ret;

 ret = -ENOMEM;
 ps = kzalloc(sizeof(struct usb_dev_state), GFP_KERNEL);
 if (!ps)
  goto out_free_ps;

 ret = -ENODEV;


 if (imajor(inode) == USB_DEVICE_MAJOR)
  dev = usbdev_lookup_by_devt(inode->i_rdev);
 if (!dev)
  goto out_free_ps;

 usb_lock_device(dev);
 if (dev->state == USB_STATE_NOTATTACHED)
  goto out_unlock_device;

 ret = usb_autoresume_device(dev);
 if (ret)
  goto out_unlock_device;

 ps->dev = dev;
 ps->file = file;
 ps->interface_allowed_mask = 0xFFFFFFFF;
 spin_lock_init(&ps->lock);
 INIT_LIST_HEAD(&ps->list);
 INIT_LIST_HEAD(&ps->async_pending);
 INIT_LIST_HEAD(&ps->async_completed);
 INIT_LIST_HEAD(&ps->memory_list);
 init_waitqueue_head(&ps->wait);
 init_waitqueue_head(&ps->wait_for_resume);
 ps->disc_pid = get_pid(task_pid(current));
 ps->cred = get_current_cred();
 smp_wmb();


 list_add_tail(&ps->list, &dev->filelist);
 file->private_data = ps;
 usb_unlock_device(dev);
 snoop(&dev->dev, "opened by process %d: %s\n", task_pid_nr(current),
   current->comm);
 return ret;

 out_unlock_device:
 usb_unlock_device(dev);
 usb_put_dev(dev);
 out_free_ps:
 kfree(ps);
 return ret;
}
