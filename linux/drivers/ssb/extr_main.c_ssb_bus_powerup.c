
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int powered_up; int chipco; } ;
typedef enum ssb_clkmode { ____Placeholder_ssb_clkmode } ssb_clkmode ;


 int SSB_CLKMODE_DYNAMIC ;
 int SSB_CLKMODE_FAST ;
 int SSB_GPIO_PLL ;
 int SSB_GPIO_XTAL ;
 int pr_err (char*) ;
 int ssb_chipco_set_clockmode (int *,int) ;
 int ssb_pci_xtal (struct ssb_bus*,int,int) ;

int ssb_bus_powerup(struct ssb_bus *bus, bool dynamic_pctl)
{
 int err;
 enum ssb_clkmode mode;

 err = ssb_pci_xtal(bus, SSB_GPIO_XTAL | SSB_GPIO_PLL, 1);
 if (err)
  goto error;

 bus->powered_up = 1;

 mode = dynamic_pctl ? SSB_CLKMODE_DYNAMIC : SSB_CLKMODE_FAST;
 ssb_chipco_set_clockmode(&bus->chipco, mode);

 return 0;
error:
 pr_err("Bus powerup failed\n");
 return err;
}
