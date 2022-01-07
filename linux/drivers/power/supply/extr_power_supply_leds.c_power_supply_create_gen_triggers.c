
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct power_supply {int online_trig; int online_trig_name; TYPE_1__* desc; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kasprintf (int ,char*,int ) ;
 int led_trigger_register_simple (int ,int *) ;

__attribute__((used)) static int power_supply_create_gen_triggers(struct power_supply *psy)
{
 psy->online_trig_name = kasprintf(GFP_KERNEL, "%s-online",
       psy->desc->name);
 if (!psy->online_trig_name)
  return -ENOMEM;

 led_trigger_register_simple(psy->online_trig_name, &psy->online_trig);

 return 0;
}
