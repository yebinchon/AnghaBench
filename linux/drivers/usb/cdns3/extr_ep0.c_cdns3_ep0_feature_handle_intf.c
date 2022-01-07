
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_ctrlrequest {int wValue; } ;
struct cdns3_device {int dummy; } ;


 int EINVAL ;

 int le16_to_cpu (int ) ;

__attribute__((used)) static int cdns3_ep0_feature_handle_intf(struct cdns3_device *priv_dev,
      struct usb_ctrlrequest *ctrl,
      int set)
{
 u32 wValue;
 int ret = 0;

 wValue = le16_to_cpu(ctrl->wValue);

 switch (wValue) {
 case 128:
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
