
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct micro_battery {int flag; } ;





 struct micro_battery* dev_get_drvdata (int ) ;

__attribute__((used)) static int get_capacity(struct power_supply *b)
{
 struct micro_battery *mb = dev_get_drvdata(b->dev.parent);

 switch (mb->flag & 0x07) {
 case 129:
  return 100;
  break;
 case 128:
  return 50;
  break;
 case 130:
  return 5;
  break;
 default:
  break;
 }
 return 0;
}
