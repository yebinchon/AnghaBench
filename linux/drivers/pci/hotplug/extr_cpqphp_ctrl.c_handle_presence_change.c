
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct slot {scalar_t__ state; } ;
struct pci_func {int presence_save; scalar_t__ switch_save; } ;
struct event_info {int hp_slot; int event_type; } ;
struct controller {size_t next_event; int push_button; int ctrl_int_comp; scalar_t__ hpc_reg; struct event_info* event_queue; scalar_t__ slot_device_offset; int bus; } ;


 scalar_t__ BLINKINGOFF_STATE ;
 scalar_t__ BLINKINGON_STATE ;
 int INT_BUTTON_CANCEL ;
 int INT_BUTTON_IGNORE ;
 int INT_BUTTON_PRESS ;
 int INT_BUTTON_RELEASE ;
 int INT_PRESENCE_OFF ;
 int INT_PRESENCE_ON ;
 scalar_t__ POWEROFF_STATE ;
 scalar_t__ POWERON_STATE ;
 scalar_t__ SLOT_MASK ;
 struct slot* cpqhp_find_slot (struct controller*,int) ;
 struct pci_func* cpqhp_slot_find (int ,scalar_t__,int ) ;
 int dbg (char*,...) ;
 int readb (scalar_t__) ;

__attribute__((used)) static u8 handle_presence_change(u16 change, struct controller *ctrl)
{
 int hp_slot;
 u8 rc = 0;
 u8 temp_byte;
 u16 temp_word;
 struct pci_func *func;
 struct event_info *taskInfo;
 struct slot *p_slot;

 if (!change)
  return 0;




 dbg("cpqsbd:  Presence/Notify input change.\n");
 dbg("         Changed bits are 0x%4.4x\n", change);

 for (hp_slot = 0; hp_slot < 6; hp_slot++) {
  if (change & (0x0101 << hp_slot)) {



   func = cpqhp_slot_find(ctrl->bus,
    (hp_slot + ctrl->slot_device_offset), 0);

   taskInfo = &(ctrl->event_queue[ctrl->next_event]);
   ctrl->next_event = (ctrl->next_event + 1) % 10;
   taskInfo->hp_slot = hp_slot;

   rc++;

   p_slot = cpqhp_find_slot(ctrl, hp_slot + (readb(ctrl->hpc_reg + SLOT_MASK) >> 4));
   if (!p_slot)
    return 0;




   if (func->switch_save && (ctrl->push_button == 1)) {
    temp_word = ctrl->ctrl_int_comp >> 16;
    temp_byte = (temp_word >> hp_slot) & 0x01;
    temp_byte |= (temp_word >> (hp_slot + 7)) & 0x02;

    if (temp_byte != func->presence_save) {



     dbg("hp_slot %d button pressed\n", hp_slot);
     taskInfo->event_type = INT_BUTTON_PRESS;
    } else {



     dbg("hp_slot %d button released\n", hp_slot);
     taskInfo->event_type = INT_BUTTON_RELEASE;


     if ((p_slot->state == BLINKINGON_STATE)
         || (p_slot->state == BLINKINGOFF_STATE)) {
      taskInfo->event_type = INT_BUTTON_CANCEL;
      dbg("hp_slot %d button cancel\n", hp_slot);
     } else if ((p_slot->state == POWERON_STATE)
         || (p_slot->state == POWEROFF_STATE)) {

      taskInfo->event_type = INT_BUTTON_IGNORE;
      dbg("hp_slot %d button ignore\n", hp_slot);
     }
    }
   } else {



    temp_word = ctrl->ctrl_int_comp >> 16;
    func->presence_save = (temp_word >> hp_slot) & 0x01;
    func->presence_save |= (temp_word >> (hp_slot + 7)) & 0x02;

    if ((!(ctrl->ctrl_int_comp & (0x010000 << hp_slot))) ||
        (!(ctrl->ctrl_int_comp & (0x01000000 << hp_slot)))) {

     taskInfo->event_type = INT_PRESENCE_ON;
    } else {

     taskInfo->event_type = INT_PRESENCE_OFF;
    }
   }
  }
 }

 return rc;
}
