
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 int WUSBCMD_ASYNC_EN ;
 scalar_t__ WUSBSTS ;
 int WUSBSTS_ASYNC_SCHED ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;
 int whci_wait_for (int *,scalar_t__,int ,int ,int,char*) ;

void asl_stop(struct whc *whc)
{
 whc_write_wusbcmd(whc, WUSBCMD_ASYNC_EN, 0);
 whci_wait_for(&whc->umc->dev, whc->base + WUSBSTS,
        WUSBSTS_ASYNC_SCHED, 0,
        1000, "stop ASL");
}
