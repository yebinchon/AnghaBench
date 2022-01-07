
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lpm_capable; int is_otg; int * ep0; int ep_list; int name; int * ops; int max_speed; } ;
struct TYPE_4__ {scalar_t__ lpm; int g_rx_fifo_size; int g_np_tx_fifo_size; } ;
struct dwc2_hsotg {scalar_t__ dr_mode; int num_of_eps; int ctrl_req; TYPE_3__** eps_out; TYPE_2__ gadget; TYPE_3__** eps_in; struct device* dev; int irq; void* ep0_buff; void* ctrl_buff; int op_state; TYPE_1__ params; scalar_t__ remote_wakeup_allowed; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int ep; } ;


 int DWC2_CTRL_BUFF_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int OTG_STATE_B_PERIPHERAL ;
 scalar_t__ USB_DR_MODE_OTG ;
 scalar_t__ USB_DR_MODE_PERIPHERAL ;
 int USB_SPEED_HIGH ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 void* devm_kzalloc (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct dwc2_hsotg*) ;
 int dwc2_gadget_alloc_ctrl_desc_chains (struct dwc2_hsotg*) ;
 int dwc2_hsotg_dump (struct dwc2_hsotg*) ;
 int dwc2_hsotg_ep_alloc_request (int *,int ) ;
 int dwc2_hsotg_ep_free_request (int *,int ) ;
 int dwc2_hsotg_gadget_ops ;
 int dwc2_hsotg_hw_cfg (struct dwc2_hsotg*) ;
 int dwc2_hsotg_initep (struct dwc2_hsotg*,TYPE_3__*,int,int) ;
 int dwc2_hsotg_irq ;
 int usb_add_gadget_udc (struct device*,TYPE_2__*) ;
 scalar_t__ using_desc_dma (struct dwc2_hsotg*) ;

int dwc2_gadget_init(struct dwc2_hsotg *hsotg)
{
 struct device *dev = hsotg->dev;
 int epnum;
 int ret;


 dev_dbg(dev, "NonPeriodic TXFIFO size: %d\n",
  hsotg->params.g_np_tx_fifo_size);
 dev_dbg(dev, "RXFIFO size: %d\n", hsotg->params.g_rx_fifo_size);

 hsotg->gadget.max_speed = USB_SPEED_HIGH;
 hsotg->gadget.ops = &dwc2_hsotg_gadget_ops;
 hsotg->gadget.name = dev_name(dev);
 hsotg->remote_wakeup_allowed = 0;

 if (hsotg->params.lpm)
  hsotg->gadget.lpm_capable = 1;

 if (hsotg->dr_mode == USB_DR_MODE_OTG)
  hsotg->gadget.is_otg = 1;
 else if (hsotg->dr_mode == USB_DR_MODE_PERIPHERAL)
  hsotg->op_state = OTG_STATE_B_PERIPHERAL;

 ret = dwc2_hsotg_hw_cfg(hsotg);
 if (ret) {
  dev_err(hsotg->dev, "Hardware configuration failed: %d\n", ret);
  return ret;
 }

 hsotg->ctrl_buff = devm_kzalloc(hsotg->dev,
   DWC2_CTRL_BUFF_SIZE, GFP_KERNEL);
 if (!hsotg->ctrl_buff)
  return -ENOMEM;

 hsotg->ep0_buff = devm_kzalloc(hsotg->dev,
   DWC2_CTRL_BUFF_SIZE, GFP_KERNEL);
 if (!hsotg->ep0_buff)
  return -ENOMEM;

 if (using_desc_dma(hsotg)) {
  ret = dwc2_gadget_alloc_ctrl_desc_chains(hsotg);
  if (ret < 0)
   return ret;
 }

 ret = devm_request_irq(hsotg->dev, hsotg->irq, dwc2_hsotg_irq,
          IRQF_SHARED, dev_name(hsotg->dev), hsotg);
 if (ret < 0) {
  dev_err(dev, "cannot claim IRQ for gadget\n");
  return ret;
 }



 if (hsotg->num_of_eps == 0) {
  dev_err(dev, "wrong number of EPs (zero)\n");
  return -EINVAL;
 }



 INIT_LIST_HEAD(&hsotg->gadget.ep_list);
 hsotg->gadget.ep0 = &hsotg->eps_out[0]->ep;



 hsotg->ctrl_req = dwc2_hsotg_ep_alloc_request(&hsotg->eps_out[0]->ep,
           GFP_KERNEL);
 if (!hsotg->ctrl_req) {
  dev_err(dev, "failed to allocate ctrl req\n");
  return -ENOMEM;
 }


 for (epnum = 0; epnum < hsotg->num_of_eps; epnum++) {
  if (hsotg->eps_in[epnum])
   dwc2_hsotg_initep(hsotg, hsotg->eps_in[epnum],
       epnum, 1);
  if (hsotg->eps_out[epnum])
   dwc2_hsotg_initep(hsotg, hsotg->eps_out[epnum],
       epnum, 0);
 }

 ret = usb_add_gadget_udc(dev, &hsotg->gadget);
 if (ret) {
  dwc2_hsotg_ep_free_request(&hsotg->eps_out[0]->ep,
        hsotg->ctrl_req);
  return ret;
 }
 dwc2_hsotg_dump(hsotg);

 return 0;
}
