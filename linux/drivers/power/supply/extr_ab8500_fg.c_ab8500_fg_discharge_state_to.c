
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {size_t discharge_state; int dev; } ;
typedef enum ab8500_fg_discharge_state { ____Placeholder_ab8500_fg_discharge_state } ab8500_fg_discharge_state ;


 int dev_dbg (int ,char*,size_t,int ,int,int ) ;
 int * discharge_state ;

__attribute__((used)) static void ab8500_fg_discharge_state_to(struct ab8500_fg *di,
 enum ab8500_fg_discharge_state new_state)
{
 dev_dbg(di->dev, "Discharge state from %d [%s] to %d [%s]\n",
  di->discharge_state,
  discharge_state[di->discharge_state],
  new_state,
  discharge_state[new_state]);

 di->discharge_state = new_state;
}
