
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int ien; } ;


 int writel (int ,int *) ;

__attribute__((used)) static void cdns3_otg_disable_irq(struct cdns3 *cdns)
{
 writel(0, &cdns->otg_regs->ien);
}
