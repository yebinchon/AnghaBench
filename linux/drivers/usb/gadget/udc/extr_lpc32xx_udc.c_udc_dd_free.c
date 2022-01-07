
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_usbd_dd_gad {int this_dma; } ;
struct lpc32xx_udc {int dd_cache; } ;


 int dma_pool_free (int ,struct lpc32xx_usbd_dd_gad*,int ) ;

__attribute__((used)) static void udc_dd_free(struct lpc32xx_udc *udc, struct lpc32xx_usbd_dd_gad *dd)
{
 dma_pool_free(udc->dd_cache, dd, dd->this_dma);
}
