
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {int name; TYPE_1__* config; } ;
struct f_loopback {TYPE_2__ function; int out_ep; int in_ep; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int VDBG (struct usb_composite_dev*,char*,int ) ;
 int disable_endpoints (struct usb_composite_dev*,int ,int ,int *,int *) ;

__attribute__((used)) static void disable_loopback(struct f_loopback *loop)
{
 struct usb_composite_dev *cdev;

 cdev = loop->function.config->cdev;
 disable_endpoints(cdev, loop->in_ep, loop->out_ep, ((void*)0), ((void*)0));
 VDBG(cdev, "%s disabled\n", loop->function.name);
}
