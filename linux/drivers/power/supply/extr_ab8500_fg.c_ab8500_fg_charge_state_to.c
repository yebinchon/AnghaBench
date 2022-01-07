
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {size_t charge_state; int dev; } ;
typedef enum ab8500_fg_charge_state { ____Placeholder_ab8500_fg_charge_state } ab8500_fg_charge_state ;


 int * charge_state ;
 int dev_dbg (int ,char*,size_t,int ,int,int ) ;

__attribute__((used)) static void ab8500_fg_charge_state_to(struct ab8500_fg *di,
 enum ab8500_fg_charge_state new_state)
{
 dev_dbg(di->dev, "Charge state from %d [%s] to %d [%s]\n",
  di->charge_state,
  charge_state[di->charge_state],
  new_state,
  charge_state[new_state]);

 di->charge_state = new_state;
}
