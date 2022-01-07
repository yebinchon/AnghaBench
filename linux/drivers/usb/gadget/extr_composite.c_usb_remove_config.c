
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_configuration {int dummy; } ;
struct usb_composite_dev {int lock; struct usb_configuration* config; } ;


 int remove_config (struct usb_composite_dev*,struct usb_configuration*) ;
 int reset_config (struct usb_composite_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void usb_remove_config(struct usb_composite_dev *cdev,
        struct usb_configuration *config)
{
 unsigned long flags;

 spin_lock_irqsave(&cdev->lock, flags);

 if (cdev->config == config)
  reset_config(cdev);

 spin_unlock_irqrestore(&cdev->lock, flags);

 remove_config(cdev, config);
}
