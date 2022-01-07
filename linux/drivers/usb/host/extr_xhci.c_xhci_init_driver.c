
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_driver_overrides {scalar_t__ start; scalar_t__ reset; scalar_t__ extra_priv_size; } ;
struct hc_driver {scalar_t__ start; scalar_t__ reset; int hcd_priv_size; } ;


 int BUG_ON (int) ;
 struct hc_driver xhci_hc_driver ;

void xhci_init_driver(struct hc_driver *drv,
        const struct xhci_driver_overrides *over)
{
 BUG_ON(!over);


 *drv = xhci_hc_driver;

 if (over) {
  drv->hcd_priv_size += over->extra_priv_size;
  if (over->reset)
   drv->reset = over->reset;
  if (over->start)
   drv->start = over->start;
 }
}
