
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ low_bat; } ;
struct TYPE_8__ {int permille; } ;
struct ab8500_fg {TYPE_3__* bm; TYPE_1__ flags; TYPE_4__ bat_cap; } ;
struct TYPE_7__ {TYPE_2__* cap_levels; } ;
struct TYPE_6__ {int critical; int low; int normal; int high; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_HIGH ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;

__attribute__((used)) static int ab8500_fg_capacity_level(struct ab8500_fg *di)
{
 int ret, percent;

 percent = DIV_ROUND_CLOSEST(di->bat_cap.permille, 10);

 if (percent <= di->bm->cap_levels->critical ||
  di->flags.low_bat)
  ret = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
 else if (percent <= di->bm->cap_levels->low)
  ret = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
 else if (percent <= di->bm->cap_levels->normal)
  ret = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
 else if (percent <= di->bm->cap_levels->high)
  ret = POWER_SUPPLY_CAPACITY_LEVEL_HIGH;
 else
  ret = POWER_SUPPLY_CAPACITY_LEVEL_FULL;

 return ret;
}
