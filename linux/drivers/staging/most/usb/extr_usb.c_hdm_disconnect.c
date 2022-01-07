
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct most_dev {struct most_dev* ep_address; struct most_dev* conf; struct most_dev* cap; struct most_dev* busy_urbs; int iface; TYPE_1__* dci; int poll_work_obj; int link_stat_timer; int io_mutex; int * usb_device; } ;
struct TYPE_2__ {int dev; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int device_unregister (int *) ;
 int kfree (struct most_dev*) ;
 int most_deregister_interface (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct most_dev* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void hdm_disconnect(struct usb_interface *interface)
{
 struct most_dev *mdev = usb_get_intfdata(interface);

 mutex_lock(&mdev->io_mutex);
 usb_set_intfdata(interface, ((void*)0));
 mdev->usb_device = ((void*)0);
 mutex_unlock(&mdev->io_mutex);

 del_timer_sync(&mdev->link_stat_timer);
 cancel_work_sync(&mdev->poll_work_obj);

 device_unregister(&mdev->dci->dev);
 most_deregister_interface(&mdev->iface);

 kfree(mdev->busy_urbs);
 kfree(mdev->cap);
 kfree(mdev->conf);
 kfree(mdev->ep_address);
 kfree(mdev);
}
