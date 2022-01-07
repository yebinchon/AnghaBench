
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LDN_GPIO ;
 scalar_t__ WDT_CONFIG ;
 scalar_t__ WDT_CONTROL ;
 scalar_t__ WDT_TIMEOUT ;
 int pr_debug (char*) ;
 int revision ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_outb (int ,scalar_t__) ;
 int superio_select (int ) ;

__attribute__((used)) static int it8712f_wdt_disable(void)
{
 int ret = superio_enter();
 if (ret)
  return ret;

 pr_debug("disabling watchdog timer\n");
 superio_select(LDN_GPIO);

 superio_outb(0, WDT_CONFIG);
 superio_outb(0, WDT_CONTROL);
 if (revision >= 0x08)
  superio_outb(0, WDT_TIMEOUT + 1);
 superio_outb(0, WDT_TIMEOUT);

 superio_exit();
 return 0;
}
