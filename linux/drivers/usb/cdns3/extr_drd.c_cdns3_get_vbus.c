
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {int dev; TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int sts; } ;


 int OTGSTS_VBUS_VALID ;
 int dev_dbg (int ,char*,int) ;
 int readl (int *) ;

int cdns3_get_vbus(struct cdns3 *cdns)
{
 int vbus;

 vbus = !!(readl(&cdns->otg_regs->sts) & OTGSTS_VBUS_VALID);
 dev_dbg(cdns->dev, "OTG VBUS: %d", vbus);

 return vbus;
}
