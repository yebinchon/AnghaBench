
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;
struct TYPE_6__ {int powergates_lock; int dev; } ;


 int IO_DPD_REQ_CODE_ON ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* pmc ;
 int tegra_io_pad_poll (TYPE_1__*,unsigned long,int,int,int) ;
 int tegra_io_pad_prepare (TYPE_1__*,int,unsigned long*,unsigned long*,int*) ;
 int tegra_io_pad_unprepare (TYPE_1__*) ;
 int tegra_pmc_writel (TYPE_1__*,int,unsigned long) ;

int tegra_io_pad_power_disable(enum tegra_io_pad id)
{
 unsigned long request, status;
 u32 mask;
 int err;

 mutex_lock(&pmc->powergates_lock);

 err = tegra_io_pad_prepare(pmc, id, &request, &status, &mask);
 if (err < 0) {
  dev_err(pmc->dev, "failed to prepare I/O pad: %d\n", err);
  goto unlock;
 }

 tegra_pmc_writel(pmc, IO_DPD_REQ_CODE_ON | mask, request);

 err = tegra_io_pad_poll(pmc, status, mask, mask, 250);
 if (err < 0) {
  dev_err(pmc->dev, "failed to disable I/O pad: %d\n", err);
  goto unlock;
 }

 tegra_io_pad_unprepare(pmc);

unlock:
 mutex_unlock(&pmc->powergates_lock);
 return err;
}
