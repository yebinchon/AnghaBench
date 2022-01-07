
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_usbd_dd_gad {int this_dma; } ;
struct lpc32xx_udc {int dd_cache; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int GFP_DMA ;
 struct lpc32xx_usbd_dd_gad* dma_pool_alloc (int ,int,int *) ;

__attribute__((used)) static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
{
 dma_addr_t dma;
 struct lpc32xx_usbd_dd_gad *dd;

 dd = dma_pool_alloc(udc->dd_cache, GFP_ATOMIC | GFP_DMA, &dma);
 if (dd)
  dd->this_dma = dma;

 return dd;
}
