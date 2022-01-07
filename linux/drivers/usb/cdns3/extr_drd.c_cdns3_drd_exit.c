
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3 {int dummy; } ;


 int cdns3_otg_disable_irq (struct cdns3*) ;

int cdns3_drd_exit(struct cdns3 *cdns)
{
 cdns3_otg_disable_irq(cdns);
 return 0;
}
