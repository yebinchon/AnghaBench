
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int hub_driver ;
 int hub_wq ;
 int usb_deregister (int *) ;

void usb_hub_cleanup(void)
{
 destroy_workqueue(hub_wq);
 usb_deregister(&hub_driver);
}
