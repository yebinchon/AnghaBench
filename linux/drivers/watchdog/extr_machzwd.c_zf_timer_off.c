
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ENABLE_WD1 ;
 unsigned int ENABLE_WD2 ;
 int del_timer_sync (int *) ;
 int pr_info (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int zf_get_control () ;
 int zf_port_lock ;
 int zf_set_control (unsigned int) ;
 int zf_timer ;

__attribute__((used)) static void zf_timer_off(void)
{
 unsigned int ctrl_reg = 0;
 unsigned long flags;


 del_timer_sync(&zf_timer);

 spin_lock_irqsave(&zf_port_lock, flags);

 ctrl_reg = zf_get_control();
 ctrl_reg |= (ENABLE_WD1|ENABLE_WD2);
 ctrl_reg &= ~(ENABLE_WD1|ENABLE_WD2);
 zf_set_control(ctrl_reg);
 spin_unlock_irqrestore(&zf_port_lock, flags);

 pr_info("Watchdog timer is now disabled\n");
}
