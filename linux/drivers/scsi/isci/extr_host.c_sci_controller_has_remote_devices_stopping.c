
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct isci_host {size_t remote_node_entries; TYPE_2__** device_table; } ;
struct TYPE_3__ {scalar_t__ current_state_id; } ;
struct TYPE_4__ {TYPE_1__ sm; } ;


 scalar_t__ SCI_DEV_STOPPING ;

bool sci_controller_has_remote_devices_stopping(struct isci_host *ihost)
{
 u32 index;

 for (index = 0; index < ihost->remote_node_entries; index++) {
  if ((ihost->device_table[index] != ((void*)0)) &&
     (ihost->device_table[index]->sm.current_state_id == SCI_DEV_STOPPING))
   return 1;
 }

 return 0;
}
