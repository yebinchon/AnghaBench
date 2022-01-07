
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int WORK_QUEUE_NAME ;
 int * create_singlethread_workqueue (int ) ;
 int pr_err (char*) ;
 int * usbip_queue ;

int usbip_init_eh(void)
{
 usbip_queue = create_singlethread_workqueue(WORK_QUEUE_NAME);
 if (usbip_queue == ((void*)0)) {
  pr_err("failed to create usbip_event\n");
  return -ENOMEM;
 }
 return 0;
}
