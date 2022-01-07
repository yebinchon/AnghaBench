
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int name; } ;
struct cdns3_endpoint {int flags; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int dev; } ;


 int EP_WEDGE ;
 int cdns3_gadget_ep_set_halt (struct usb_ep*,int) ;
 int dev_dbg (int ,char*,int ) ;
 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;

int cdns3_gadget_ep_set_wedge(struct usb_ep *ep)
{
 struct cdns3_endpoint *priv_ep = ep_to_cdns3_ep(ep);
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

 dev_dbg(priv_dev->dev, "Wedge for %s\n", ep->name);
 cdns3_gadget_ep_set_halt(ep, 1);
 priv_ep->flags |= EP_WEDGE;

 return 0;
}
