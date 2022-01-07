
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg_ep {int desc_list_dma; int desc_list; } ;
struct dwc2_hsotg {int ep0_state; int dev; int ctrl_out_desc_dma; int ctrl_out_desc; int ctrl_in_desc_dma; int ctrl_in_desc; int * setup_desc_dma; int * setup_desc; } ;







 int EINVAL ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static int dwc2_gadget_set_ep0_desc_chain(struct dwc2_hsotg *hsotg,
       struct dwc2_hsotg_ep *hs_ep)
{
 switch (hsotg->ep0_state) {
 case 130:
 case 128:
  hs_ep->desc_list = hsotg->setup_desc[0];
  hs_ep->desc_list_dma = hsotg->setup_desc_dma[0];
  break;
 case 132:
 case 129:
  hs_ep->desc_list = hsotg->ctrl_in_desc;
  hs_ep->desc_list_dma = hsotg->ctrl_in_desc_dma;
  break;
 case 131:
  hs_ep->desc_list = hsotg->ctrl_out_desc;
  hs_ep->desc_list_dma = hsotg->ctrl_out_desc_dma;
  break;
 default:
  dev_err(hsotg->dev, "invalid EP 0 state in queue %d\n",
   hsotg->ep0_state);
  return -EINVAL;
 }

 return 0;
}
