
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HZ ;
 int barrier () ;
 int jiffies ;
 int local_irq_enable () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static void
acornscsi_csdelay(unsigned int cs)
{
    unsigned long target_jiffies, flags;

    target_jiffies = jiffies + 1 + cs * HZ / 100;

    local_save_flags(flags);
    local_irq_enable();

    while (time_before(jiffies, target_jiffies)) barrier();

    local_irq_restore(flags);
}
