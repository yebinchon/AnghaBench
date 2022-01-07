
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct f_loopback {int in_ep; int out_ep; TYPE_1__ function; } ;


 int DBG (struct usb_composite_dev*,char*,int ) ;
 int alloc_requests (struct usb_composite_dev*,struct f_loopback*) ;
 int enable_endpoint (struct usb_composite_dev*,struct f_loopback*,int ) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static int
enable_loopback(struct usb_composite_dev *cdev, struct f_loopback *loop)
{
 int result = 0;

 result = enable_endpoint(cdev, loop, loop->in_ep);
 if (result)
  goto out;

 result = enable_endpoint(cdev, loop, loop->out_ep);
 if (result)
  goto disable_in;

 result = alloc_requests(cdev, loop);
 if (result)
  goto disable_out;

 DBG(cdev, "%s enabled\n", loop->function.name);
 return 0;

disable_out:
 usb_ep_disable(loop->out_ep);
disable_in:
 usb_ep_disable(loop->in_ep);
out:
 return result;
}
