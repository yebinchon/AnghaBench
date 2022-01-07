
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequest; } ;
struct cdns3_device {int dummy; } ;
 int cdns3_ep0_delegate_req (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_req_ep0_get_status (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_req_ep0_handle_feature (struct cdns3_device*,struct usb_ctrlrequest*,int) ;
 int cdns3_req_ep0_set_address (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_req_ep0_set_configuration (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_req_ep0_set_isoch_delay (struct cdns3_device*,struct usb_ctrlrequest*) ;
 int cdns3_req_ep0_set_sel (struct cdns3_device*,struct usb_ctrlrequest*) ;

__attribute__((used)) static int cdns3_ep0_standard_request(struct cdns3_device *priv_dev,
          struct usb_ctrlrequest *ctrl_req)
{
 int ret;

 switch (ctrl_req->bRequest) {
 case 132:
  ret = cdns3_req_ep0_set_address(priv_dev, ctrl_req);
  break;
 case 131:
  ret = cdns3_req_ep0_set_configuration(priv_dev, ctrl_req);
  break;
 case 133:
  ret = cdns3_req_ep0_get_status(priv_dev, ctrl_req);
  break;
 case 134:
  ret = cdns3_req_ep0_handle_feature(priv_dev, ctrl_req, 0);
  break;
 case 130:
  ret = cdns3_req_ep0_handle_feature(priv_dev, ctrl_req, 1);
  break;
 case 128:
  ret = cdns3_req_ep0_set_sel(priv_dev, ctrl_req);
  break;
 case 129:
  ret = cdns3_req_ep0_set_isoch_delay(priv_dev, ctrl_req);
  break;
 default:
  ret = cdns3_ep0_delegate_req(priv_dev, ctrl_req);
  break;
 }

 return ret;
}
