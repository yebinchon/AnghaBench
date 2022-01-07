
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udc_stp_dma {int dummy; } ;
struct udc_data_dma {int dummy; } ;
struct udc {int * data_requests; int * stp_requests; TYPE_2__* ep; int dev; TYPE_1__* regs; } ;
struct TYPE_4__ {int td_stp_dma; struct udc_stp_dma* td_stp; struct udc_data_dma* td; int td_phys; int * dma; } ;
struct TYPE_3__ {int ctl; } ;


 int DBG (struct udc*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t UDC_EP0IN_IX ;
 size_t UDC_EP0OUT_IX ;
 void* dma_pool_alloc (int *,int ,int *) ;
 void* dma_pool_create (char*,int ,int,int ,int ) ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,struct udc_stp_dma*,int ) ;
 int use_dma_bufferfill_mode ;
 scalar_t__ use_dma_ppb ;
 scalar_t__ use_dma_ppb_du ;

int init_dma_pools(struct udc *dev)
{
 struct udc_stp_dma *td_stp;
 struct udc_data_dma *td_data;
 int retval;


 if (use_dma_ppb) {
  use_dma_bufferfill_mode = 0;
 } else {
  use_dma_ppb_du = 0;
  use_dma_bufferfill_mode = 1;
 }


 dev->data_requests = dma_pool_create("data_requests", dev->dev,
  sizeof(struct udc_data_dma), 0, 0);
 if (!dev->data_requests) {
  DBG(dev, "can't get request data pool\n");
  return -ENOMEM;
 }


 dev->ep[UDC_EP0IN_IX].dma = &dev->regs->ctl;


 dev->stp_requests = dma_pool_create("setup requests", dev->dev,
  sizeof(struct udc_stp_dma), 0, 0);
 if (!dev->stp_requests) {
  DBG(dev, "can't get stp request pool\n");
  retval = -ENOMEM;
  goto err_create_dma_pool;
 }

 td_stp = dma_pool_alloc(dev->stp_requests, GFP_KERNEL,
    &dev->ep[UDC_EP0OUT_IX].td_stp_dma);
 if (!td_stp) {
  retval = -ENOMEM;
  goto err_alloc_dma;
 }
 dev->ep[UDC_EP0OUT_IX].td_stp = td_stp;


 td_data = dma_pool_alloc(dev->stp_requests, GFP_KERNEL,
    &dev->ep[UDC_EP0OUT_IX].td_phys);
 if (!td_data) {
  retval = -ENOMEM;
  goto err_alloc_phys;
 }
 dev->ep[UDC_EP0OUT_IX].td = td_data;
 return 0;

err_alloc_phys:
 dma_pool_free(dev->stp_requests, dev->ep[UDC_EP0OUT_IX].td_stp,
        dev->ep[UDC_EP0OUT_IX].td_stp_dma);
err_alloc_dma:
 dma_pool_destroy(dev->stp_requests);
 dev->stp_requests = ((void*)0);
err_create_dma_pool:
 dma_pool_destroy(dev->data_requests);
 dev->data_requests = ((void*)0);
 return retval;
}
