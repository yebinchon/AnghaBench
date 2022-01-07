
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_driver_overrides {scalar_t__ reset; scalar_t__ extra_priv_size; int product_desc; } ;
struct hc_driver {scalar_t__ reset; int hcd_priv_size; int product_desc; } ;


 struct hc_driver ohci_hc_driver ;

void ohci_init_driver(struct hc_driver *drv,
  const struct ohci_driver_overrides *over)
{

 *drv = ohci_hc_driver;

 if (over) {
  drv->product_desc = over->product_desc;
  drv->hcd_priv_size += over->extra_priv_size;
  if (over->reset)
   drv->reset = over->reset;
 }
}
