
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int b_srp_done; scalar_t__ power_up; scalar_t__ b_bus_req; } ;
struct ci_hdrc {int dev; TYPE_1__ fsm; } ;


 int OTGSC_HABA ;
 int hw_write_otgsc (struct ci_hdrc*,int ,int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static int b_data_pls_tmout(struct ci_hdrc *ci)
{
 ci->fsm.b_srp_done = 1;
 ci->fsm.b_bus_req = 0;
 if (ci->fsm.power_up)
  ci->fsm.power_up = 0;
 hw_write_otgsc(ci, OTGSC_HABA, 0);
 pm_runtime_put(ci->dev);
 return 0;
}
