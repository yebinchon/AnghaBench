
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct slot {int presence_save; TYPE_1__* hpc_ops; } ;
struct controller {scalar_t__ slot_device_offset; } ;
struct TYPE_2__ {int (* get_adapter_status ) (struct slot*,int *) ;} ;


 int INT_BUTTON_PRESS ;
 int ctrl_dbg (struct controller*,char*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int queue_interrupt_event (struct slot*,int ) ;
 struct slot* shpchp_find_slot (struct controller*,scalar_t__) ;
 int slot_name (struct slot*) ;
 int stub1 (struct slot*,int *) ;

u8 shpchp_handle_attention_button(u8 hp_slot, struct controller *ctrl)
{
 struct slot *p_slot;
 u32 event_type;


 ctrl_dbg(ctrl, "Attention button interrupt received\n");

 p_slot = shpchp_find_slot(ctrl, hp_slot + ctrl->slot_device_offset);
 p_slot->hpc_ops->get_adapter_status(p_slot, &(p_slot->presence_save));




 ctrl_info(ctrl, "Button pressed on Slot(%s)\n", slot_name(p_slot));
 event_type = INT_BUTTON_PRESS;

 queue_interrupt_event(p_slot, event_type);

 return 0;

}
