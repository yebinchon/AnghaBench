
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type_control; int dir_in; int dir_out; } ;
struct TYPE_6__ {int maxburst; int * desc; int name; TYPE_1__ caps; scalar_t__ address; int * ops; } ;
struct cdns3_endpoint {int type; TYPE_3__ endpoint; int name; } ;
struct TYPE_5__ {TYPE_3__* ep0; } ;
struct cdns3_device {TYPE_2__ gadget; } ;


 int CDNS3_EP0_MAX_PACKET_LIMIT ;
 int USB_ENDPOINT_XFER_CONTROL ;
 int cdns3_allocate_trb_pool (struct cdns3_endpoint*) ;
 int cdns3_gadget_ep0_desc ;
 int cdns3_gadget_ep0_ops ;
 int sprintf (int ,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int ) ;

int cdns3_init_ep0(struct cdns3_device *priv_dev,
     struct cdns3_endpoint *priv_ep)
{
 sprintf(priv_ep->name, "ep0");


 priv_ep->endpoint.ops = &cdns3_gadget_ep0_ops;
 priv_ep->endpoint.maxburst = 1;
 usb_ep_set_maxpacket_limit(&priv_ep->endpoint,
       CDNS3_EP0_MAX_PACKET_LIMIT);
 priv_ep->endpoint.address = 0;
 priv_ep->endpoint.caps.type_control = 1;
 priv_ep->endpoint.caps.dir_in = 1;
 priv_ep->endpoint.caps.dir_out = 1;
 priv_ep->endpoint.name = priv_ep->name;
 priv_ep->endpoint.desc = &cdns3_gadget_ep0_desc;
 priv_dev->gadget.ep0 = &priv_ep->endpoint;
 priv_ep->type = USB_ENDPOINT_XFER_CONTROL;

 return cdns3_allocate_trb_pool(priv_ep);
}
