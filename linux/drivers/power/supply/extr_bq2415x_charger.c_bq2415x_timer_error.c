
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bq2415x_device {char const* timer_error; scalar_t__ automode; int dev; TYPE_2__* charger; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BQ2415X_MODE_OFF ;
 int bq2415x_set_autotimer (struct bq2415x_device*,int ) ;
 int bq2415x_set_mode (struct bq2415x_device*,int ) ;
 int dev_err (int ,char*,char const*) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void bq2415x_timer_error(struct bq2415x_device *bq, const char *msg)
{
 bq->timer_error = msg;
 sysfs_notify(&bq->charger->dev.kobj, ((void*)0), "timer");
 dev_err(bq->dev, "%s\n", msg);
 if (bq->automode > 0)
  bq->automode = 0;
 bq2415x_set_mode(bq, BQ2415X_MODE_OFF);
 bq2415x_set_autotimer(bq, 0);
}
