
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC7240_DISABLE_PORT ;
 int SBC7240_ENABLED_STATUS_BIT ;
 int inb_p (int ) ;
 int pr_info (char*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wdt_status ;

__attribute__((used)) static void wdt_disable(void)
{

 if (test_and_clear_bit(SBC7240_ENABLED_STATUS_BIT, &wdt_status)) {
  inb_p(SBC7240_DISABLE_PORT);
  pr_info("Watchdog timer is now disabled\n");
 }
}
