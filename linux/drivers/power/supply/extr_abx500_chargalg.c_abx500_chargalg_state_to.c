
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_chargalg {int charge_state; int dev; } ;
typedef enum abx500_chargalg_states { ____Placeholder_abx500_chargalg_states } abx500_chargalg_states ;


 int dev_dbg (int ,char*,char*,int,int ,int,int ) ;
 int * states ;

__attribute__((used)) static void abx500_chargalg_state_to(struct abx500_chargalg *di,
 enum abx500_chargalg_states state)
{
 dev_dbg(di->dev,
  "State changed: %s (From state: [%d] %s =to=> [%d] %s )\n",
  di->charge_state == state ? "NO" : "YES",
  di->charge_state,
  states[di->charge_state],
  state,
  states[state]);

 di->charge_state = state;
}
