
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qoriq_tmu_data {TYPE_1__* regs; TYPE_2__** sensor; } ;
struct qoriq_sensor {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {int id; int tzd; struct qoriq_tmu_data* qdata; } ;
struct TYPE_4__ {int tmr; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SITES_MAX ;
 int TMR_ALPF ;
 int TMR_ME ;
 TYPE_2__* devm_kzalloc (int *,int,int ) ;
 int devm_thermal_zone_of_sensor_register (int *,int,TYPE_2__*,int *) ;
 struct qoriq_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int tmu_tz_ops ;
 int tmu_write (struct qoriq_tmu_data*,int,int *) ;

__attribute__((used)) static int qoriq_tmu_register_tmu_zone(struct platform_device *pdev)
{
 struct qoriq_tmu_data *qdata = platform_get_drvdata(pdev);
 int id, sites = 0;

 for (id = 0; id < SITES_MAX; id++) {
  qdata->sensor[id] = devm_kzalloc(&pdev->dev,
    sizeof(struct qoriq_sensor), GFP_KERNEL);
  if (!qdata->sensor[id])
   return -ENOMEM;

  qdata->sensor[id]->id = id;
  qdata->sensor[id]->qdata = qdata;
  qdata->sensor[id]->tzd = devm_thermal_zone_of_sensor_register(
    &pdev->dev, id, qdata->sensor[id], &tmu_tz_ops);
  if (IS_ERR(qdata->sensor[id]->tzd)) {
   if (PTR_ERR(qdata->sensor[id]->tzd) == -ENODEV)
    continue;
   else
    return PTR_ERR(qdata->sensor[id]->tzd);
  }

  sites |= 0x1 << (15 - id);
 }


 if (sites != 0)
  tmu_write(qdata, sites | TMR_ME | TMR_ALPF, &qdata->regs->tmr);

 return 0;
}
