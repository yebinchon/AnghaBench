
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ar7_wdt_disable (int ) ;
 int pr_debug (char*) ;

__attribute__((used)) static void ar7_wdt_disable_wdt(void)
{
 pr_debug("disabling watchdog timer\n");
 ar7_wdt_disable(0);
}
