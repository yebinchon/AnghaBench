
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int charger_connected; } ;
struct pm2xxx_charger {int lpn_pin; TYPE_1__ ac; } ;


 int SLEEP_MAX ;
 int SLEEP_MIN ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static void set_lpn_pin(struct pm2xxx_charger *pm2)
{
 if (!pm2->ac.charger_connected && gpio_is_valid(pm2->lpn_pin)) {
  gpio_set_value(pm2->lpn_pin, 1);
  usleep_range(SLEEP_MIN, SLEEP_MAX);
 }
}
