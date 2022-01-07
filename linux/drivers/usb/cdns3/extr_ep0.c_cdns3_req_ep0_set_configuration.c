
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int wValue; } ;
struct cdns3_endpoint {int flags; } ;
struct TYPE_2__ {int state; } ;
struct cdns3_device {TYPE_1__ gadget; struct cdns3_endpoint** eps; } ;
typedef enum usb_device_state { ____Placeholder_usb_device_state } usb_device_state ;


 int CDNS3_ENDPOINTS_MAX_COUNT ;
 int EINVAL ;
 int EP_CLAIMED ;


 int cdns3_ep0_delegate_req (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_ep_config (struct cdns3_endpoint*) ;
 int cdns3_hw_reset_eps_config (struct cdns3_device*) ;
 int cdns3_set_hw_configuration (struct cdns3_device*) ;
 int le16_to_cpu (int ) ;
 int usb_gadget_set_state (TYPE_1__*,int const) ;

__attribute__((used)) static int cdns3_req_ep0_set_configuration(struct cdns3_device *priv_dev,
        struct usb_ctrlrequest *ctrl_req)
{
 enum usb_device_state device_state = priv_dev->gadget.state;
 struct cdns3_endpoint *priv_ep;
 u32 config = le16_to_cpu(ctrl_req->wValue);
 int result = 0;
 int i;

 switch (device_state) {
 case 129:

  for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++) {
   priv_ep = priv_dev->eps[i];
   if (!priv_ep)
    continue;

   if (priv_ep->flags & EP_CLAIMED)
    cdns3_ep_config(priv_ep);
  }

  result = cdns3_ep0_delegate_req(priv_dev, ctrl_req);

  if (result)
   return result;

  if (config) {
   cdns3_set_hw_configuration(priv_dev);
  } else {
   cdns3_hw_reset_eps_config(priv_dev);
   usb_gadget_set_state(&priv_dev->gadget,
          129);
  }
  break;
 case 128:
  result = cdns3_ep0_delegate_req(priv_dev, ctrl_req);

  if (!config && !result) {
   cdns3_hw_reset_eps_config(priv_dev);
   usb_gadget_set_state(&priv_dev->gadget,
          129);
  }
  break;
 default:
  result = -EINVAL;
 }

 return result;
}
