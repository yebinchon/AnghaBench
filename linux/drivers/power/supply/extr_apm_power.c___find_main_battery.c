
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ intval; } ;
struct find_bat_param {scalar_t__ max_charge; scalar_t__ max_energy; TYPE_4__ full; TYPE_2__* bat; TYPE_2__* max_energy_bat; TYPE_2__* max_charge_bat; TYPE_2__* main; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* desc; } ;
struct TYPE_5__ {scalar_t__ use_for_apm; } ;


 int CHARGE_FULL ;
 int CHARGE_FULL_DESIGN ;
 int ENERGY_FULL ;
 int ENERGY_FULL_DESIGN ;
 int PSY_PROP (TYPE_2__*,int ,TYPE_4__*) ;
 TYPE_2__* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int __find_main_battery(struct device *dev, void *data)
{
 struct find_bat_param *bp = (struct find_bat_param *)data;

 bp->bat = dev_get_drvdata(dev);

 if (bp->bat->desc->use_for_apm) {

  bp->main = bp->bat;
  return 1;
 }

 if (!PSY_PROP(bp->bat, CHARGE_FULL_DESIGN, &bp->full) ||
   !PSY_PROP(bp->bat, CHARGE_FULL, &bp->full)) {
  if (bp->full.intval > bp->max_charge) {
   bp->max_charge_bat = bp->bat;
   bp->max_charge = bp->full.intval;
  }
 } else if (!PSY_PROP(bp->bat, ENERGY_FULL_DESIGN, &bp->full) ||
   !PSY_PROP(bp->bat, ENERGY_FULL, &bp->full)) {
  if (bp->full.intval > bp->max_energy) {
   bp->max_energy_bat = bp->bat;
   bp->max_energy = bp->full.intval;
  }
 }
 return 0;
}
