
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_led_work; } ;
struct zd_mac {int chip; TYPE_1__ housekeeping; } ;


 int ZD_LED_OFF ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg_f (int ,char*) ;
 int zd_chip_control_leds (int *,int ) ;
 int zd_mac_dev (struct zd_mac*) ;

__attribute__((used)) static void housekeeping_disable(struct zd_mac *mac)
{
 dev_dbg_f(zd_mac_dev(mac), "\n");
 cancel_delayed_work_sync(&mac->housekeeping.link_led_work);
 zd_chip_control_leds(&mac->chip, ZD_LED_OFF);
}
