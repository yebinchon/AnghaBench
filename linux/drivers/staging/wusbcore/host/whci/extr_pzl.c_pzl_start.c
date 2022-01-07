
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc {scalar_t__ base; TYPE_1__* umc; int pz_list_dma; } ;
struct TYPE_2__ {int dev; } ;


 int WUSBCMD_PERIODIC_EN ;
 scalar_t__ WUSBPERIODICLISTBASE ;
 scalar_t__ WUSBSTS ;
 int WUSBSTS_PERIODIC_SCHED ;
 int le_writeq (int ,scalar_t__) ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;
 int whci_wait_for (int *,scalar_t__,int ,int ,int,char*) ;

void pzl_start(struct whc *whc)
{
 le_writeq(whc->pz_list_dma, whc->base + WUSBPERIODICLISTBASE);

 whc_write_wusbcmd(whc, WUSBCMD_PERIODIC_EN, WUSBCMD_PERIODIC_EN);
 whci_wait_for(&whc->umc->dev, whc->base + WUSBSTS,
        WUSBSTS_PERIODIC_SCHED, WUSBSTS_PERIODIC_SCHED,
        1000, "start PZL");
}
