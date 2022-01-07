
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd_usb {int in_async; int * urb_async_waiting; scalar_t__ cmd_error; int submitted_cmds; } ;
struct TYPE_2__ {int mutex; } ;


 int ZD_ASSERT (int) ;
 int mutex_is_locked (int *) ;
 int usb_anchor_empty (int *) ;
 TYPE_1__* zd_usb_to_chip (struct zd_usb*) ;

void zd_usb_iowrite16v_async_start(struct zd_usb *usb)
{
 ZD_ASSERT(usb_anchor_empty(&usb->submitted_cmds));
 ZD_ASSERT(usb->urb_async_waiting == ((void*)0));
 ZD_ASSERT(!usb->in_async);

 ZD_ASSERT(mutex_is_locked(&zd_usb_to_chip(usb)->mutex));

 usb->in_async = 1;
 usb->cmd_error = 0;
 usb->urb_async_waiting = ((void*)0);
}
