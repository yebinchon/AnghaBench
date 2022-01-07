
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {void* ctrl_out_desc; int ctrl_out_desc_dma; int dev; void* ctrl_in_desc; int ctrl_in_desc_dma; void** setup_desc; int * setup_desc_dma; } ;
struct dwc2_dma_desc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dmam_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int dwc2_gadget_alloc_ctrl_desc_chains(struct dwc2_hsotg *hsotg)
{
 hsotg->setup_desc[0] =
  dmam_alloc_coherent(hsotg->dev,
        sizeof(struct dwc2_dma_desc),
        &hsotg->setup_desc_dma[0],
        GFP_KERNEL);
 if (!hsotg->setup_desc[0])
  goto fail;

 hsotg->setup_desc[1] =
  dmam_alloc_coherent(hsotg->dev,
        sizeof(struct dwc2_dma_desc),
        &hsotg->setup_desc_dma[1],
        GFP_KERNEL);
 if (!hsotg->setup_desc[1])
  goto fail;

 hsotg->ctrl_in_desc =
  dmam_alloc_coherent(hsotg->dev,
        sizeof(struct dwc2_dma_desc),
        &hsotg->ctrl_in_desc_dma,
        GFP_KERNEL);
 if (!hsotg->ctrl_in_desc)
  goto fail;

 hsotg->ctrl_out_desc =
  dmam_alloc_coherent(hsotg->dev,
        sizeof(struct dwc2_dma_desc),
        &hsotg->ctrl_out_desc_dma,
        GFP_KERNEL);
 if (!hsotg->ctrl_out_desc)
  goto fail;

 return 0;

fail:
 return -ENOMEM;
}
