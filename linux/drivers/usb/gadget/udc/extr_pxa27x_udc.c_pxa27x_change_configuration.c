
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int wValue; scalar_t__ wLength; scalar_t__ wIndex; int bRequest; scalar_t__ bRequestType; } ;
struct pxa_udc {int config; int * pxa_ep; int gadget; TYPE_1__* driver; scalar_t__ last_alternate; scalar_t__ last_interface; int dev; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int UDCCSR0_AREN ;
 int USB_REQ_SET_CONFIGURATION ;
 int WAIT_ACK_SET_CONF_INTERF ;
 int dev_dbg (int ,char*,int) ;
 int ep_write_UDCCSR (int *,int ) ;
 int set_ep0state (struct pxa_udc*,int ) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static void pxa27x_change_configuration(struct pxa_udc *udc, int config)
{
 struct usb_ctrlrequest req ;

 dev_dbg(udc->dev, "config=%d\n", config);

 udc->config = config;
 udc->last_interface = 0;
 udc->last_alternate = 0;

 req.bRequestType = 0;
 req.bRequest = USB_REQ_SET_CONFIGURATION;
 req.wValue = config;
 req.wIndex = 0;
 req.wLength = 0;

 set_ep0state(udc, WAIT_ACK_SET_CONF_INTERF);
 udc->driver->setup(&udc->gadget, &req);
 ep_write_UDCCSR(&udc->pxa_ep[0], UDCCSR0_AREN);
}
