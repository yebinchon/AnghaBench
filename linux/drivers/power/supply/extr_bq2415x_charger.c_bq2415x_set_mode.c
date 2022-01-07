
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bq2415x_device {int mode; TYPE_2__* charger; int dev; } ;
typedef enum bq2415x_mode { ____Placeholder_bq2415x_mode } bq2415x_mode ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BQ2415X_BOOST_MODE_DISABLE ;
 int BQ2415X_BOOST_MODE_ENABLE ;
 int BQ2415X_CHARGER_DISABLE ;
 int BQ2415X_CHARGER_ENABLE ;





 int battery_regulation_voltage ;
 int bq2415x_exec_command (struct bq2415x_device*,int ) ;
 int bq2415x_set_current_limit (struct bq2415x_device*,int) ;
 int bq2415x_set_default_value (struct bq2415x_device*,int ) ;
 int dev_dbg (int ,char*) ;
 int sysfs_notify (int *,int *,char*) ;
 int weak_battery_voltage ;

__attribute__((used)) static int bq2415x_set_mode(struct bq2415x_device *bq, enum bq2415x_mode mode)
{
 int ret = 0;
 int charger = 0;
 int boost = 0;

 if (mode == 132)
  boost = 1;
 else if (mode != 128)
  charger = 1;

 if (!charger)
  ret = bq2415x_exec_command(bq, BQ2415X_CHARGER_DISABLE);

 if (!boost)
  ret = bq2415x_exec_command(bq, BQ2415X_BOOST_MODE_DISABLE);

 if (ret < 0)
  return ret;

 switch (mode) {
 case 128:
  dev_dbg(bq->dev, "changing mode to: Offline\n");
  ret = bq2415x_set_current_limit(bq, 100);
  break;
 case 129:
  dev_dbg(bq->dev, "changing mode to: N/A\n");
  ret = bq2415x_set_current_limit(bq, 100);
  break;
 case 130:
  dev_dbg(bq->dev, "changing mode to: Host/HUB charger\n");
  ret = bq2415x_set_current_limit(bq, 500);
  break;
 case 131:
  dev_dbg(bq->dev, "changing mode to: Dedicated charger\n");
  ret = bq2415x_set_current_limit(bq, 1800);
  break;
 case 132:
  dev_dbg(bq->dev, "changing mode to: Boost\n");
  ret = bq2415x_set_current_limit(bq, 100);
  break;
 }

 if (ret < 0)
  return ret;

 if (charger)
  ret = bq2415x_exec_command(bq, BQ2415X_CHARGER_ENABLE);
 else if (boost)
  ret = bq2415x_exec_command(bq, BQ2415X_BOOST_MODE_ENABLE);

 if (ret < 0)
  return ret;

 bq2415x_set_default_value(bq, weak_battery_voltage);
 bq2415x_set_default_value(bq, battery_regulation_voltage);

 bq->mode = mode;
 sysfs_notify(&bq->charger->dev.kobj, ((void*)0), "mode");

 return 0;

}
