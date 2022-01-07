
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct device {int dummy; } ;
struct cros_ec_spi {TYPE_1__* high_pri_worker; } ;
struct TYPE_5__ {int task; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int MAX_RT_PRIO ;
 int PTR_ERR (TYPE_1__*) ;
 int SCHED_FIFO ;
 int cros_ec_spi_high_pri_release ;
 int dev_err (struct device*,char*,int) ;
 int devm_add_action_or_reset (struct device*,int ,TYPE_1__*) ;
 TYPE_1__* kthread_create_worker (int ,char*) ;
 int sched_setscheduler_nocheck (int ,int ,struct sched_param*) ;

__attribute__((used)) static int cros_ec_spi_devm_high_pri_alloc(struct device *dev,
        struct cros_ec_spi *ec_spi)
{
 struct sched_param sched_priority = {
  .sched_priority = MAX_RT_PRIO / 2,
 };
 int err;

 ec_spi->high_pri_worker =
  kthread_create_worker(0, "cros_ec_spi_high_pri");

 if (IS_ERR(ec_spi->high_pri_worker)) {
  err = PTR_ERR(ec_spi->high_pri_worker);
  dev_err(dev, "Can't create cros_ec high pri worker: %d\n", err);
  return err;
 }

 err = devm_add_action_or_reset(dev, cros_ec_spi_high_pri_release,
           ec_spi->high_pri_worker);
 if (err)
  return err;

 err = sched_setscheduler_nocheck(ec_spi->high_pri_worker->task,
      SCHED_FIFO, &sched_priority);
 if (err)
  dev_err(dev, "Can't set cros_ec high pri priority: %d\n", err);
 return err;
}
