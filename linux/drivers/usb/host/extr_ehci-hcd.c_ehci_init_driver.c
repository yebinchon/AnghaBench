
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hc_driver {scalar_t__ port_power; scalar_t__ reset; int hcd_priv_size; } ;
struct ehci_driver_overrides {scalar_t__ port_power; scalar_t__ reset; scalar_t__ extra_priv_size; } ;


 struct hc_driver ehci_hc_driver ;

void ehci_init_driver(struct hc_driver *drv,
  const struct ehci_driver_overrides *over)
{

 *drv = ehci_hc_driver;

 if (over) {
  drv->hcd_priv_size += over->extra_priv_size;
  if (over->reset)
   drv->reset = over->reset;
  if (over->port_power)
   drv->port_power = over->port_power;
 }
}
