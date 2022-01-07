
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ssp_isoc_ep_comp_descriptor {scalar_t__ bDescriptorType; } ;
struct TYPE_2__ {int bEndpointAddress; } ;
struct usb_host_endpoint {int ssp_isoc_ep_comp; TYPE_1__ desc; } ;
struct device {int dummy; } ;


 scalar_t__ USB_DT_SSP_ISOC_ENDPOINT_COMP ;
 int USB_DT_SSP_ISOC_EP_COMP_SIZE ;
 int dev_warn (struct device*,char*,int,int,int,int ) ;
 int memcpy (int *,struct usb_ssp_isoc_ep_comp_descriptor*,int) ;

__attribute__((used)) static void usb_parse_ssp_isoc_endpoint_companion(struct device *ddev,
  int cfgno, int inum, int asnum, struct usb_host_endpoint *ep,
  unsigned char *buffer, int size)
{
 struct usb_ssp_isoc_ep_comp_descriptor *desc;





 desc = (struct usb_ssp_isoc_ep_comp_descriptor *) buffer;
 if (desc->bDescriptorType != USB_DT_SSP_ISOC_ENDPOINT_COMP ||
     size < USB_DT_SSP_ISOC_EP_COMP_SIZE) {
  dev_warn(ddev, "Invalid SuperSpeedPlus isoc endpoint companion"
    "for config %d interface %d altsetting %d ep %d.\n",
    cfgno, inum, asnum, ep->desc.bEndpointAddress);
  return;
 }
 memcpy(&ep->ssp_isoc_ep_comp, desc, USB_DT_SSP_ISOC_EP_COMP_SIZE);
}
