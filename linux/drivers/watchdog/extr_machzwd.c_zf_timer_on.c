
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ENABLE_WD1 ;
 int PULSE_LEN ;
 int WD1 ;
 int ZF_CTIMEOUT ;
 scalar_t__ ZF_HW_TIMEO ;
 scalar_t__ ZF_USER_TIMEO ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ next_heartbeat ;
 int pr_info (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int zf_action ;
 unsigned int zf_get_control () ;
 int zf_port_lock ;
 int zf_set_control (unsigned int) ;
 int zf_set_timer (int ,int ) ;
 int zf_timer ;
 int zf_writeb (int ,int) ;

__attribute__((used)) static void zf_timer_on(void)
{
 unsigned int ctrl_reg = 0;
 unsigned long flags;

 spin_lock_irqsave(&zf_port_lock, flags);

 zf_writeb(PULSE_LEN, 0xff);

 zf_set_timer(ZF_CTIMEOUT, WD1);


 next_heartbeat = jiffies + ZF_USER_TIMEO;


 mod_timer(&zf_timer, jiffies + ZF_HW_TIMEO);


 ctrl_reg = zf_get_control();
 ctrl_reg |= (ENABLE_WD1|zf_action);
 zf_set_control(ctrl_reg);
 spin_unlock_irqrestore(&zf_port_lock, flags);

 pr_info("Watchdog timer is now enabled\n");
}
