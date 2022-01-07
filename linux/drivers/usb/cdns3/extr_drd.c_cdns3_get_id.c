
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {int dev; TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int sts; } ;


 int OTGSTS_ID_VALUE ;
 int dev_dbg (int ,char*,int) ;
 int readl (int *) ;

int cdns3_get_id(struct cdns3 *cdns)
{
 int id;

 id = readl(&cdns->otg_regs->sts) & OTGSTS_ID_VALUE;
 dev_dbg(cdns->dev, "OTG ID: %d", id);

 return id;
}
