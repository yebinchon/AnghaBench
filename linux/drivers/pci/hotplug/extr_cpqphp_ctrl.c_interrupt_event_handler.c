
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct slot {scalar_t__ state; TYPE_2__ task_event; struct controller* ctrl; scalar_t__ hp_slot; int number; } ;
struct pci_func {int dummy; } ;
struct controller {TYPE_1__* event_queue; int crit_sect; scalar_t__ slot_device_offset; int bus; } ;
struct TYPE_5__ {scalar_t__ event_type; scalar_t__ hp_slot; } ;


 scalar_t__ BLINKINGOFF_STATE ;
 scalar_t__ BLINKINGON_STATE ;
 int HZ ;
 scalar_t__ INT_BUTTON_CANCEL ;
 scalar_t__ INT_BUTTON_PRESS ;
 scalar_t__ INT_BUTTON_RELEASE ;
 scalar_t__ INT_POWER_FAULT ;
 scalar_t__ STATIC_STATE ;
 int add_timer (TYPE_2__*) ;
 int amber_LED_off (struct controller*,scalar_t__) ;
 struct slot* cpqhp_find_slot (struct controller*,scalar_t__) ;
 struct pci_func* cpqhp_slot_find (int ,scalar_t__,int ) ;
 int dbg (char*,...) ;
 int del_timer (TYPE_2__*) ;
 int green_LED_blink (struct controller*,scalar_t__) ;
 int green_LED_off (struct controller*,scalar_t__) ;
 int green_LED_on (struct controller*,scalar_t__) ;
 int info (int ,int ) ;
 scalar_t__ is_slot_enabled (struct controller*,scalar_t__) ;
 scalar_t__ jiffies ;
 int msg_button_cancel ;
 int msg_button_off ;
 int msg_button_on ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pushbutton_helper_thread ;
 int set_SOGO (struct controller*) ;
 int timer_setup (TYPE_2__*,int ,int ) ;
 int wait_for_ctrl_irq (struct controller*) ;

__attribute__((used)) static void interrupt_event_handler(struct controller *ctrl)
{
 int loop = 0;
 int change = 1;
 struct pci_func *func;
 u8 hp_slot;
 struct slot *p_slot;

 while (change) {
  change = 0;

  for (loop = 0; loop < 10; loop++) {

   if (ctrl->event_queue[loop].event_type != 0) {
    hp_slot = ctrl->event_queue[loop].hp_slot;

    func = cpqhp_slot_find(ctrl->bus, (hp_slot + ctrl->slot_device_offset), 0);
    if (!func)
     return;

    p_slot = cpqhp_find_slot(ctrl, hp_slot + ctrl->slot_device_offset);
    if (!p_slot)
     return;

    dbg("hp_slot %d, func %p, p_slot %p\n",
        hp_slot, func, p_slot);

    if (ctrl->event_queue[loop].event_type == INT_BUTTON_PRESS) {
     dbg("button pressed\n");
    } else if (ctrl->event_queue[loop].event_type ==
        INT_BUTTON_CANCEL) {
     dbg("button cancel\n");
     del_timer(&p_slot->task_event);

     mutex_lock(&ctrl->crit_sect);

     if (p_slot->state == BLINKINGOFF_STATE) {

      dbg("turn on green LED\n");
      green_LED_on(ctrl, hp_slot);
     } else if (p_slot->state == BLINKINGON_STATE) {

      dbg("turn off green LED\n");
      green_LED_off(ctrl, hp_slot);
     }

     info(msg_button_cancel, p_slot->number);

     p_slot->state = STATIC_STATE;

     amber_LED_off(ctrl, hp_slot);

     set_SOGO(ctrl);


     wait_for_ctrl_irq(ctrl);

     mutex_unlock(&ctrl->crit_sect);
    }

    else if (ctrl->event_queue[loop].event_type == INT_BUTTON_RELEASE) {
     dbg("button release\n");

     if (is_slot_enabled(ctrl, hp_slot)) {
      dbg("slot is on\n");
      p_slot->state = BLINKINGOFF_STATE;
      info(msg_button_off, p_slot->number);
     } else {
      dbg("slot is off\n");
      p_slot->state = BLINKINGON_STATE;
      info(msg_button_on, p_slot->number);
     }
     mutex_lock(&ctrl->crit_sect);

     dbg("blink green LED and turn off amber\n");

     amber_LED_off(ctrl, hp_slot);
     green_LED_blink(ctrl, hp_slot);

     set_SOGO(ctrl);


     wait_for_ctrl_irq(ctrl);

     mutex_unlock(&ctrl->crit_sect);
     timer_setup(&p_slot->task_event,
          pushbutton_helper_thread,
          0);
     p_slot->hp_slot = hp_slot;
     p_slot->ctrl = ctrl;

     p_slot->task_event.expires = jiffies + 5 * HZ;

     dbg("add_timer p_slot = %p\n", p_slot);
     add_timer(&p_slot->task_event);
    }

    else if (ctrl->event_queue[loop].event_type == INT_POWER_FAULT) {
     dbg("power fault\n");
    }

    ctrl->event_queue[loop].event_type = 0;

    change = 1;
   }
  }
 }
}
