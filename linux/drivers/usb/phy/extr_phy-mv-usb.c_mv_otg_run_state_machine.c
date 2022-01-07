
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_otg {int work; int qwork; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void mv_otg_run_state_machine(struct mv_otg *mvotg,
         unsigned long delay)
{
 dev_dbg(&mvotg->pdev->dev, "transceiver is updated\n");
 if (!mvotg->qwork)
  return;

 queue_delayed_work(mvotg->qwork, &mvotg->work, delay);
}
