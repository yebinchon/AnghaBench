
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_dev {int gstrings; int configs; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void composite_init_dev(struct usb_composite_dev *cdev)
{
 spin_lock_init(&cdev->lock);
 INIT_LIST_HEAD(&cdev->configs);
 INIT_LIST_HEAD(&cdev->gstrings);
}
