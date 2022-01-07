
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int * usbip_queue ;

void usbip_finish_eh(void)
{
 flush_workqueue(usbip_queue);
 destroy_workqueue(usbip_queue);
 usbip_queue = ((void*)0);
}
