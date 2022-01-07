
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDT_CTRL_REG ;
 int WDT_EVENT_INT ;
 int WDT_EVENT_REBOOT ;
 int WDT_OUTPIN_CFG ;
 int WDT_TIMER_CFG ;
 int WDT_UNIT_SECS ;
 int WDT_UNIT_SEL ;
 int eurwdt_disable_timer () ;
 int eurwdt_set_timeout (int ) ;
 int eurwdt_write_reg (int ,int) ;
 int ev ;
 int irq ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void eurwdt_activate_timer(void)
{
 eurwdt_disable_timer();
 eurwdt_write_reg(WDT_CTRL_REG, 0x01);
 eurwdt_write_reg(WDT_OUTPIN_CFG,
  !strcmp("int", ev) ? WDT_EVENT_INT : WDT_EVENT_REBOOT);


 if (irq == 2 || irq > 15 || irq < 0) {
  pr_err("invalid irq number\n");
  irq = 0;
 }
 if (irq == 0)
  pr_info("interrupt disabled\n");

 eurwdt_write_reg(WDT_TIMER_CFG, irq << 4);

 eurwdt_write_reg(WDT_UNIT_SEL, WDT_UNIT_SECS);
 eurwdt_set_timeout(0);
}
