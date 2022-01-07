
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {TYPE_1__* otg_regs; } ;
struct TYPE_2__ {int ien; } ;


 int OTGIEN_ID_CHANGE_INT ;
 int OTGIEN_VBUSVALID_FALL_INT ;
 int OTGIEN_VBUSVALID_RISE_INT ;
 int writel (int,int *) ;

__attribute__((used)) static void cdns3_otg_enable_irq(struct cdns3 *cdns)
{
 writel(OTGIEN_ID_CHANGE_INT | OTGIEN_VBUSVALID_RISE_INT |
        OTGIEN_VBUSVALID_FALL_INT, &cdns->otg_regs->ien);
}
