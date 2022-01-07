
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ufs_clk_scaling {int is_busy_started; scalar_t__ busy_start_t; scalar_t__ tot_busy_t; scalar_t__ window_start_t; } ;
struct ufs_hba {TYPE_1__* host; scalar_t__ outstanding_reqs; struct ufs_clk_scaling clk_scaling; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {scalar_t__ busy_time; int total_time; } ;
struct TYPE_2__ {int host_lock; } ;


 int EINVAL ;
 struct ufs_hba* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int jiffies_to_usecs (long) ;
 scalar_t__ ktime_get () ;
 int ktime_sub (scalar_t__,scalar_t__) ;
 scalar_t__ ktime_to_us (int ) ;
 int memset (struct devfreq_dev_status*,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ufshcd_is_clkscaling_supported (struct ufs_hba*) ;

__attribute__((used)) static int ufshcd_devfreq_get_dev_status(struct device *dev,
  struct devfreq_dev_status *stat)
{
 struct ufs_hba *hba = dev_get_drvdata(dev);
 struct ufs_clk_scaling *scaling = &hba->clk_scaling;
 unsigned long flags;

 if (!ufshcd_is_clkscaling_supported(hba))
  return -EINVAL;

 memset(stat, 0, sizeof(*stat));

 spin_lock_irqsave(hba->host->host_lock, flags);
 if (!scaling->window_start_t)
  goto start_window;

 if (scaling->is_busy_started)
  scaling->tot_busy_t += ktime_to_us(ktime_sub(ktime_get(),
     scaling->busy_start_t));

 stat->total_time = jiffies_to_usecs((long)jiffies -
    (long)scaling->window_start_t);
 stat->busy_time = scaling->tot_busy_t;
start_window:
 scaling->window_start_t = jiffies;
 scaling->tot_busy_t = 0;

 if (hba->outstanding_reqs) {
  scaling->busy_start_t = ktime_get();
  scaling->is_busy_started = 1;
 } else {
  scaling->busy_start_t = 0;
  scaling->is_busy_started = 0;
 }
 spin_unlock_irqrestore(hba->host->host_lock, flags);
 return 0;
}
