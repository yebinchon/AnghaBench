
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int ALI_7101_GPIO_O ;
 int ALI_7101_WDT ;
 char ALI_WDT_ARM ;
 scalar_t__ WDT_INTERVAL ;
 int alim7101_pmu ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 int pci_read_config_byte (int ,int,char*) ;
 int pci_write_config_byte (int ,int,char) ;
 int pr_warn (char*) ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 scalar_t__ use_gpio ;

__attribute__((used)) static void wdt_timer_ping(struct timer_list *unused)
{



 char tmp;

 if (time_before(jiffies, next_heartbeat)) {

  pci_read_config_byte(alim7101_pmu, 0x92, &tmp);
  pci_write_config_byte(alim7101_pmu,
     ALI_7101_WDT, (tmp & ~ALI_WDT_ARM));
  pci_write_config_byte(alim7101_pmu,
     ALI_7101_WDT, (tmp | ALI_WDT_ARM));
  if (use_gpio) {
   pci_read_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, &tmp);
   pci_write_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, tmp | 0x20);
   pci_write_config_byte(alim7101_pmu,
     ALI_7101_GPIO_O, tmp & ~0x20);
  }
 } else {
  pr_warn("Heartbeat lost! Will not ping the watchdog\n");
 }

 mod_timer(&timer, jiffies + WDT_INTERVAL);
}
