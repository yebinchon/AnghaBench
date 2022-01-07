
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int update_interval; } ;


 int update_interval_max ;

__attribute__((used)) static void next_interval(struct gb_power_supply *gbpsy)
{
 if (gbpsy->update_interval == update_interval_max)
  return;


 gbpsy->update_interval *= 2;
 if (gbpsy->update_interval > update_interval_max)
  gbpsy->update_interval = update_interval_max;
}
