
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_phy {size_t phy_index; } ;
struct TYPE_2__ {int ** requesters; int phys_waiting; } ;
struct isci_host {TYPE_1__ power_control; } ;


 int BUG_ON (int ) ;

void sci_controller_power_control_queue_remove(struct isci_host *ihost,
            struct isci_phy *iphy)
{
 BUG_ON(iphy == ((void*)0));

 if (ihost->power_control.requesters[iphy->phy_index])
  ihost->power_control.phys_waiting--;

 ihost->power_control.requesters[iphy->phy_index] = ((void*)0);
}
