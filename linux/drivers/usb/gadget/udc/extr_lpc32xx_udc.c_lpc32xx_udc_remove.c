
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpc32xx_udc {int usb_slv_clk; int udca_p_base; int udca_v_base; int dd_cache; scalar_t__ driver; int gadget; } ;


 int EBUSY ;
 int UDCA_BUFF_SIZE ;
 int clk_disable_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int dma_pool_destroy (int ) ;
 struct lpc32xx_udc* platform_get_drvdata (struct platform_device*) ;
 int pullup (struct lpc32xx_udc*,int ) ;
 int remove_debug_file (struct lpc32xx_udc*) ;
 int udc_clk_set (struct lpc32xx_udc*,int) ;
 int udc_disable (struct lpc32xx_udc*) ;
 int usb_del_gadget_udc (int *) ;

__attribute__((used)) static int lpc32xx_udc_remove(struct platform_device *pdev)
{
 struct lpc32xx_udc *udc = platform_get_drvdata(pdev);

 usb_del_gadget_udc(&udc->gadget);
 if (udc->driver)
  return -EBUSY;

 udc_clk_set(udc, 1);
 udc_disable(udc);
 pullup(udc, 0);

 device_init_wakeup(&pdev->dev, 0);
 remove_debug_file(udc);

 dma_pool_destroy(udc->dd_cache);
 dma_free_coherent(&pdev->dev, UDCA_BUFF_SIZE,
     udc->udca_v_base, udc->udca_p_base);

 clk_disable_unprepare(udc->usb_slv_clk);

 return 0;
}
