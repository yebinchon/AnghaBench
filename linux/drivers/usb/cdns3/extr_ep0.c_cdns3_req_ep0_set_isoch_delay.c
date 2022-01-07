
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wValue; scalar_t__ wLength; scalar_t__ wIndex; } ;
struct cdns3_device {int isoch_delay; } ;


 int EINVAL ;

__attribute__((used)) static int cdns3_req_ep0_set_isoch_delay(struct cdns3_device *priv_dev,
      struct usb_ctrlrequest *ctrl_req)
{
 if (ctrl_req->wIndex || ctrl_req->wLength)
  return -EINVAL;

 priv_dev->isoch_delay = ctrl_req->wValue;

 return 0;
}
