
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_btemp {int btemp_periodic_work; int btemp_wq; int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*,int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void ab8500_btemp_periodic(struct ab8500_btemp *di,
 bool enable)
{
 dev_dbg(di->dev, "Enable periodic temperature measurements: %d\n",
  enable);




 cancel_delayed_work_sync(&di->btemp_periodic_work);

 if (enable)
  queue_delayed_work(di->btemp_wq, &di->btemp_periodic_work, 0);
}
