
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int wLength; } ;
struct cdns3_endpoint {int dir; int pending_req_list; } ;
struct cdns3_device {int ep0_data_dir; scalar_t__ ep0_stage; struct cdns3_endpoint** eps; struct usb_ctrlrequest* setup_buf; } ;


 scalar_t__ CDNS3_DATA_STAGE ;
 scalar_t__ CDNS3_STATUS_STAGE ;
 int ECONNRESET ;
 int USB_DIR_IN ;
 int USB_GADGET_DELAYED_STATUS ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;
 int cdns3_ep0_complete_setup (struct cdns3_device*,int,int) ;
 int cdns3_ep0_delegate_req (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_ep0_standard_request (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_gadget_giveback (struct cdns3_endpoint*,int ,int ) ;
 struct usb_request* cdns3_next_request (int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int list_empty (int *) ;
 int to_cdns3_request (struct usb_request*) ;
 int trace_cdns3_ctrl_req (struct usb_ctrlrequest*) ;

__attribute__((used)) static void cdns3_ep0_setup_phase(struct cdns3_device *priv_dev)
{
 struct usb_ctrlrequest *ctrl = priv_dev->setup_buf;
 struct cdns3_endpoint *priv_ep = priv_dev->eps[0];
 int result;

 priv_dev->ep0_data_dir = ctrl->bRequestType & USB_DIR_IN;

 trace_cdns3_ctrl_req(ctrl);

 if (!list_empty(&priv_ep->pending_req_list)) {
  struct usb_request *request;

  request = cdns3_next_request(&priv_ep->pending_req_list);
  priv_ep->dir = priv_dev->ep0_data_dir;
  cdns3_gadget_giveback(priv_ep, to_cdns3_request(request),
          -ECONNRESET);
 }

 if (le16_to_cpu(ctrl->wLength))
  priv_dev->ep0_stage = CDNS3_DATA_STAGE;
 else
  priv_dev->ep0_stage = CDNS3_STATUS_STAGE;

 if ((ctrl->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
  result = cdns3_ep0_standard_request(priv_dev, ctrl);
 else
  result = cdns3_ep0_delegate_req(priv_dev, ctrl);

 if (result == USB_GADGET_DELAYED_STATUS)
  return;

 if (result < 0)
  cdns3_ep0_complete_setup(priv_dev, 1, 1);
 else if (priv_dev->ep0_stage == CDNS3_STATUS_STAGE)
  cdns3_ep0_complete_setup(priv_dev, 0, 1);
}
