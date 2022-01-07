
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,scalar_t__) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void uas_cmd_cmplt(struct urb *urb)
{
 if (urb->status)
  dev_err(&urb->dev->dev, "cmd cmplt err %d\n", urb->status);

 usb_free_urb(urb);
}
