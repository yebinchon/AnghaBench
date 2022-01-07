
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ done; scalar_t__ dc_clk; scalar_t__ hhc_clk; scalar_t__ clk_requested; int * transceiver; } ;


 int IS_ERR_OR_NULL (int *) ;
 int UDC_SYSCON1 ;
 int clk_put (scalar_t__) ;
 int complete (scalar_t__) ;
 int kfree (TYPE_1__*) ;
 int omap_udc_enable_clock (int ) ;
 int omap_writew (int ,int ) ;
 int pullup_disable (TYPE_1__*) ;
 int remove_proc_file () ;
 TYPE_1__* udc ;
 int usb_put_phy (int *) ;

__attribute__((used)) static void omap_udc_release(struct device *dev)
{
 pullup_disable(udc);
 if (!IS_ERR_OR_NULL(udc->transceiver)) {
  usb_put_phy(udc->transceiver);
  udc->transceiver = ((void*)0);
 }
 omap_writew(0, UDC_SYSCON1);
 remove_proc_file();
 if (udc->dc_clk) {
  if (udc->clk_requested)
   omap_udc_enable_clock(0);
  clk_put(udc->hhc_clk);
  clk_put(udc->dc_clk);
 }
 if (udc->done)
  complete(udc->done);
 kfree(udc);
}
