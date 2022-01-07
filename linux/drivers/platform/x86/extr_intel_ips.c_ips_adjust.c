
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ips_driver {int dev; scalar_t__ gpu_turbo_enabled; scalar_t__ cpu_turbo_enabled; int turbo_status_lock; scalar_t__ poll_turbo_status; } ;


 int IPS_ADJUST_PERIOD ;
 int cpu_exceeded (struct ips_driver*,int ) ;
 int dev_dbg (int ,char*) ;
 int ips_cpu_busy (struct ips_driver*) ;
 int ips_cpu_lower (struct ips_driver*) ;
 int ips_cpu_raise (struct ips_driver*) ;
 int ips_disable_cpu_turbo (struct ips_driver*) ;
 int ips_disable_gpu_turbo (struct ips_driver*) ;
 int ips_enable_cpu_turbo (struct ips_driver*) ;
 int ips_enable_gpu_turbo (struct ips_driver*) ;
 int ips_gpu_busy (struct ips_driver*) ;
 int ips_gpu_lower (struct ips_driver*) ;
 int ips_gpu_raise (struct ips_driver*) ;
 int kthread_should_stop () ;
 int mch_exceeded (struct ips_driver*) ;
 scalar_t__ mcp_exceeded (struct ips_driver*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_timeout_interruptible (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_turbo_limits (struct ips_driver*) ;

__attribute__((used)) static int ips_adjust(void *data)
{
 struct ips_driver *ips = data;
 unsigned long flags;

 dev_dbg(ips->dev, "starting ips-adjust thread\n");





 do {
  bool cpu_busy = ips_cpu_busy(ips);
  bool gpu_busy = ips_gpu_busy(ips);

  spin_lock_irqsave(&ips->turbo_status_lock, flags);
  if (ips->poll_turbo_status)
   update_turbo_limits(ips);
  spin_unlock_irqrestore(&ips->turbo_status_lock, flags);


  if (ips->cpu_turbo_enabled)
   ips_enable_cpu_turbo(ips);
  else
   ips_disable_cpu_turbo(ips);

  if (ips->gpu_turbo_enabled)
   ips_enable_gpu_turbo(ips);
  else
   ips_disable_gpu_turbo(ips);


  if (mcp_exceeded(ips)) {
   ips_cpu_lower(ips);
   ips_gpu_lower(ips);
   goto sleep;
  }

  if (!cpu_exceeded(ips, 0) && cpu_busy)
   ips_cpu_raise(ips);
  else
   ips_cpu_lower(ips);

  if (!mch_exceeded(ips) && gpu_busy)
   ips_gpu_raise(ips);
  else
   ips_gpu_lower(ips);

sleep:
  schedule_timeout_interruptible(msecs_to_jiffies(IPS_ADJUST_PERIOD));
 } while (!kthread_should_stop());

 dev_dbg(ips->dev, "ips-adjust thread stopped\n");

 return 0;
}
