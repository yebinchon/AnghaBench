
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ENODEV ;
 int __pa_symbol (int ) ;
 int arch_send_wakeup_ipi_mask (int ) ;
 int cpu_bootaddr ;
 int cpu_lock ;
 int cpumask_of (unsigned int) ;
 int secondary_startup ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int
r9a06g032_smp_boot_secondary(unsigned int cpu,
        struct task_struct *idle)
{
 if (!cpu_bootaddr)
  return -ENODEV;

 spin_lock(&cpu_lock);

 writel(__pa_symbol(secondary_startup), cpu_bootaddr);
 arch_send_wakeup_ipi_mask(cpumask_of(cpu));

 spin_unlock(&cpu_lock);

 return 0;
}
