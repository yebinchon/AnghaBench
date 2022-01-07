
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {scalar_t__ event; int eh_waitq; } ;


 int init_waitqueue_head (int *) ;

int usbip_start_eh(struct usbip_device *ud)
{
 init_waitqueue_head(&ud->eh_waitq);
 ud->event = 0;
 return 0;
}
