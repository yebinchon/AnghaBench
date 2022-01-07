
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int COUNTER_2 ;
 unsigned int RESET_WD1 ;
 scalar_t__ ZF_HW_TIMEO ;
 int dprintk (char*,scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ next_heartbeat ;
 int pr_crit (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 unsigned int zf_get_control () ;
 int zf_port_lock ;
 int zf_set_control (unsigned int) ;
 int zf_timer ;
 int zf_writeb (int ,int) ;

__attribute__((used)) static void zf_ping(struct timer_list *unused)
{
 unsigned int ctrl_reg = 0;
 unsigned long flags;

 zf_writeb(COUNTER_2, 0xff);

 if (time_before(jiffies, next_heartbeat)) {
  dprintk("time_before: %ld\n", next_heartbeat - jiffies);





  spin_lock_irqsave(&zf_port_lock, flags);
  ctrl_reg = zf_get_control();
  ctrl_reg |= RESET_WD1;
  zf_set_control(ctrl_reg);


  ctrl_reg &= ~(RESET_WD1);
  zf_set_control(ctrl_reg);
  spin_unlock_irqrestore(&zf_port_lock, flags);

  mod_timer(&zf_timer, jiffies + ZF_HW_TIMEO);
 } else
  pr_crit("I will reset your machine\n");
}
