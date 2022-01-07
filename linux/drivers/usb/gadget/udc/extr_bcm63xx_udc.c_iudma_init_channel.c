
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iudma_ch_cfg {unsigned int n_bds; size_t ep_num; } ;
struct iudma_ch {size_t ep_num; unsigned int ch_idx; int is_tx; int enabled; unsigned int n_bds; int * bd_ring; int * end_bd; int bd_ring_dma; struct bcm63xx_udc* udc; struct bcm63xx_ep* bep; } ;
struct bcm_enet_desc {int dummy; } ;
struct bcm63xx_udc {int dev; struct bcm63xx_ep* bep; struct iudma_ch* iudma; } ;
struct bcm63xx_ep {int queue; struct iudma_ch* iudma; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int * dmam_alloc_coherent (int ,unsigned int,int *,int ) ;
 struct iudma_ch_cfg* iudma_defaults ;

__attribute__((used)) static int iudma_init_channel(struct bcm63xx_udc *udc, unsigned int ch_idx)
{
 struct iudma_ch *iudma = &udc->iudma[ch_idx];
 const struct iudma_ch_cfg *cfg = &iudma_defaults[ch_idx];
 unsigned int n_bds = cfg->n_bds;
 struct bcm63xx_ep *bep = ((void*)0);

 iudma->ep_num = cfg->ep_num;
 iudma->ch_idx = ch_idx;
 iudma->is_tx = !!(ch_idx & 0x01);
 if (iudma->ep_num >= 0) {
  bep = &udc->bep[iudma->ep_num];
  bep->iudma = iudma;
  INIT_LIST_HEAD(&bep->queue);
 }

 iudma->bep = bep;
 iudma->udc = udc;


 if (iudma->ep_num <= 0)
  iudma->enabled = 1;

 iudma->n_bds = n_bds;
 iudma->bd_ring = dmam_alloc_coherent(udc->dev,
  n_bds * sizeof(struct bcm_enet_desc),
  &iudma->bd_ring_dma, GFP_KERNEL);
 if (!iudma->bd_ring)
  return -ENOMEM;
 iudma->end_bd = &iudma->bd_ring[n_bds - 1];

 return 0;
}
