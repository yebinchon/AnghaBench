
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {scalar_t__ automode; int model; int charger; int work; scalar_t__ autotimer; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (int ) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static void bq2415x_power_supply_exit(struct bq2415x_device *bq)
{
 bq->autotimer = 0;
 if (bq->automode > 0)
  bq->automode = 0;
 cancel_delayed_work_sync(&bq->work);
 power_supply_unregister(bq->charger);
 kfree(bq->model);
}
