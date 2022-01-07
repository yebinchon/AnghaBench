
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct cdns3_device {int setup_pending; int lock; int gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static int cdns3_ep0_delegate_req(struct cdns3_device *priv_dev,
      struct usb_ctrlrequest *ctrl_req)
{
 int ret;

 spin_unlock(&priv_dev->lock);
 priv_dev->setup_pending = 1;
 ret = priv_dev->gadget_driver->setup(&priv_dev->gadget, ctrl_req);
 priv_dev->setup_pending = 0;
 spin_lock(&priv_dev->lock);
 return ret;
}
