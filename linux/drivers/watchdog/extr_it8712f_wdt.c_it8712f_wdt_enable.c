
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LDN_GPIO ;
 int WDT_CONTROL ;
 int it8712f_wdt_ping () ;
 int it8712f_wdt_update_margin () ;
 int pr_debug (char*) ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int ,int ) ;
 int superio_select (int ) ;
 int wdt_control_reg ;

__attribute__((used)) static int it8712f_wdt_enable(void)
{
 int ret = superio_enter();
 if (ret)
  return ret;

 pr_debug("enabling watchdog timer\n");
 superio_select(LDN_GPIO);

 superio_outb(wdt_control_reg, WDT_CONTROL);

 it8712f_wdt_update_margin();

 superio_exit();

 it8712f_wdt_ping();

 return 0;
}
