
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_8__ {TYPE_3__ caps; int ep_list; int * ops; int max_streams; int name; } ;
struct cdns3_endpoint {int num; int wa2_descmiss_req_list; int deferred_req_list; int pending_req_list; TYPE_4__ endpoint; int name; scalar_t__ flags; int dir; struct cdns3_device* cdns3_dev; } ;
struct TYPE_6__ {int ep_list; } ;
struct cdns3_device {int dev; TYPE_2__ gadget; struct cdns3_endpoint** eps; TYPE_1__* regs; } ;
struct TYPE_5__ {int usb_cap4; int usb_cap3; } ;


 int BIT (int) ;
 int CDNS3_ENDPOINTS_MAX_COUNT ;
 int CDNS3_EP_MAX_PACKET_LIMIT ;
 int CDNS3_EP_MAX_STREAMS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int cdns3_free_all_eps (struct cdns3_device*) ;
 int cdns3_gadget_ep_ops ;
 int cdns3_init_ep0 (struct cdns3_device*,struct cdns3_endpoint*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,char*,char*) ;
 struct cdns3_endpoint* devm_kzalloc (int ,int,int ) ;
 int list_add_tail (int *,int *) ;
 int readl (int *) ;
 int snprintf (int ,int,char*,int,char*) ;
 int usb_ep_set_maxpacket_limit (TYPE_4__*,int ) ;

__attribute__((used)) static int cdns3_init_eps(struct cdns3_device *priv_dev)
{
 u32 ep_enabled_reg, iso_ep_reg;
 struct cdns3_endpoint *priv_ep;
 int ep_dir, ep_number;
 u32 ep_mask;
 int ret = 0;
 int i;


 ep_enabled_reg = readl(&priv_dev->regs->usb_cap3);
 iso_ep_reg = readl(&priv_dev->regs->usb_cap4);

 dev_dbg(priv_dev->dev, "Initializing non-zero endpoints\n");

 for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++) {
  ep_dir = i >> 4;
  ep_number = i & 0xF;
  ep_mask = BIT(i);

  if (!(ep_enabled_reg & ep_mask))
   continue;

  if (ep_dir && !ep_number) {
   priv_dev->eps[i] = priv_dev->eps[0];
   continue;
  }

  priv_ep = devm_kzalloc(priv_dev->dev, sizeof(*priv_ep),
           GFP_KERNEL);
  if (!priv_ep)
   goto err;


  priv_ep->cdns3_dev = priv_dev;
  priv_dev->eps[i] = priv_ep;
  priv_ep->num = ep_number;
  priv_ep->dir = ep_dir ? USB_DIR_IN : USB_DIR_OUT;

  if (!ep_number) {
   ret = cdns3_init_ep0(priv_dev, priv_ep);
   if (ret) {
    dev_err(priv_dev->dev, "Failed to init ep0\n");
    goto err;
   }
  } else {
   snprintf(priv_ep->name, sizeof(priv_ep->name), "ep%d%s",
     ep_number, !!ep_dir ? "in" : "out");
   priv_ep->endpoint.name = priv_ep->name;

   usb_ep_set_maxpacket_limit(&priv_ep->endpoint,
         CDNS3_EP_MAX_PACKET_LIMIT);
   priv_ep->endpoint.max_streams = CDNS3_EP_MAX_STREAMS;
   priv_ep->endpoint.ops = &cdns3_gadget_ep_ops;
   if (ep_dir)
    priv_ep->endpoint.caps.dir_in = 1;
   else
    priv_ep->endpoint.caps.dir_out = 1;

   if (iso_ep_reg & ep_mask)
    priv_ep->endpoint.caps.type_iso = 1;

   priv_ep->endpoint.caps.type_bulk = 1;
   priv_ep->endpoint.caps.type_int = 1;

   list_add_tail(&priv_ep->endpoint.ep_list,
          &priv_dev->gadget.ep_list);
  }

  priv_ep->flags = 0;

  dev_info(priv_dev->dev, "Initialized  %s support: %s %s\n",
    priv_ep->name,
    priv_ep->endpoint.caps.type_bulk ? "BULK, INT" : "",
    priv_ep->endpoint.caps.type_iso ? "ISO" : "");

  INIT_LIST_HEAD(&priv_ep->pending_req_list);
  INIT_LIST_HEAD(&priv_ep->deferred_req_list);
  INIT_LIST_HEAD(&priv_ep->wa2_descmiss_req_list);
 }

 return 0;
err:
 cdns3_free_all_eps(priv_dev);
 return -ENOMEM;
}
