
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_request {int length; int dma; scalar_t__ zero; int list; int status; scalar_t__ actual; } ;
struct usb_ep {int maxpacket; } ;
struct cdns3_endpoint {int pending_req_list; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {scalar_t__ ep0_stage; int status_completion_no_call; int lock; int dev; int ep0_data_dir; int sysdev; int pending_status_wq; struct usb_request* pending_status_request; int hw_configured_flag; } ;
typedef int gfp_t ;


 scalar_t__ CDNS3_STATUS_STAGE ;
 int EBUSY ;
 int ECONNRESET ;
 int EINPROGRESS ;
 int EINVAL ;
 int cdns3_allow_enable_l1 (struct cdns3_device*,int) ;
 scalar_t__ cdns3_check_new_setup (struct cdns3_device*) ;
 int cdns3_ep0_complete_setup (struct cdns3_device*,int ,int) ;
 int cdns3_ep0_run_transfer (struct cdns3_device*,int ,int,int,int) ;
 int cdns3_select_ep (struct cdns3_device*,int) ;
 int cdns3_set_hw_configuration (struct cdns3_device*) ;
 int dev_err (int ,char*) ;
 struct cdns3_endpoint* ep_to_cdns3_ep (struct usb_ep*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int system_freezable_wq ;
 int trace_cdns3_ep0_queue (struct cdns3_device*,struct usb_request*) ;
 int usb_gadget_map_request_by_dev (int ,struct usb_request*,int ) ;

__attribute__((used)) static int cdns3_gadget_ep0_queue(struct usb_ep *ep,
      struct usb_request *request,
      gfp_t gfp_flags)
{
 struct cdns3_endpoint *priv_ep = ep_to_cdns3_ep(ep);
 struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
 unsigned long flags;
 int erdy_sent = 0;
 int ret = 0;
 u8 zlp = 0;

 trace_cdns3_ep0_queue(priv_dev, request);


 if (cdns3_check_new_setup(priv_dev))
  return -ECONNRESET;


 if (priv_dev->ep0_stage == CDNS3_STATUS_STAGE) {
  spin_lock_irqsave(&priv_dev->lock, flags);
  cdns3_select_ep(priv_dev, 0x00);

  erdy_sent = !priv_dev->hw_configured_flag;
  cdns3_set_hw_configuration(priv_dev);

  if (!erdy_sent)
   cdns3_ep0_complete_setup(priv_dev, 0, 1);

  cdns3_allow_enable_l1(priv_dev, 1);

  request->actual = 0;
  priv_dev->status_completion_no_call = 1;
  priv_dev->pending_status_request = request;
  spin_unlock_irqrestore(&priv_dev->lock, flags);






  queue_work(system_freezable_wq, &priv_dev->pending_status_wq);
  return 0;
 }

 spin_lock_irqsave(&priv_dev->lock, flags);
 if (!list_empty(&priv_ep->pending_req_list)) {
  dev_err(priv_dev->dev,
   "can't handle multiple requests for ep0\n");
  spin_unlock_irqrestore(&priv_dev->lock, flags);
  return -EBUSY;
 }

 ret = usb_gadget_map_request_by_dev(priv_dev->sysdev, request,
         priv_dev->ep0_data_dir);
 if (ret) {
  spin_unlock_irqrestore(&priv_dev->lock, flags);
  dev_err(priv_dev->dev, "failed to map request\n");
  return -EINVAL;
 }

 request->status = -EINPROGRESS;
 list_add_tail(&request->list, &priv_ep->pending_req_list);

 if (request->zero && request->length &&
     (request->length % ep->maxpacket == 0))
  zlp = 1;

 cdns3_ep0_run_transfer(priv_dev, request->dma, request->length, 1, zlp);

 spin_unlock_irqrestore(&priv_dev->lock, flags);

 return ret;
}
