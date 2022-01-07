
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_func {int device; int status; } ;
struct pci_bus {int cur_bus_speed; } ;
struct controller {int slot_device_offset; int crit_sect; scalar_t__ hpc_reg; struct pci_bus* pci_bus; } ;


 int CARD_FUNCTIONING ;
 int HZ ;
 int INTERLOCK_OPEN ;
 scalar_t__ INT_INPUT_CLEAR ;
 int POWER_FAILURE ;
 scalar_t__ SLOT_POWER ;
 int WRONG_BUS_FREQUENCY ;
 int amber_LED_off (struct controller*,int) ;
 int amber_LED_on (struct controller*,int) ;
 int cpqhp_configure_board (struct controller*,struct pci_func*) ;
 int cpqhp_valid_replace (struct controller*,struct pci_func*) ;
 int disable_slot_power (struct controller*,int) ;
 int enable_slot_power (struct controller*,int) ;
 int get_adapter_speed (struct controller*,int) ;
 int green_LED_blink (struct controller*,int) ;
 int green_LED_off (struct controller*,int) ;
 scalar_t__ is_slot_enabled (struct controller*,int) ;
 int long_delay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int set_SOGO (struct controller*) ;
 scalar_t__ set_controller_speed (struct controller*,int,int) ;
 int slot_disable (struct controller*,int) ;
 int slot_enable (struct controller*,int) ;
 int wait_for_ctrl_irq (struct controller*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static u32 board_replaced(struct pci_func *func, struct controller *ctrl)
{
 struct pci_bus *bus = ctrl->pci_bus;
 u8 hp_slot;
 u8 temp_byte;
 u8 adapter_speed;
 u32 rc = 0;

 hp_slot = func->device - ctrl->slot_device_offset;




 if (readl(ctrl->hpc_reg + INT_INPUT_CLEAR) & (0x01L << hp_slot))
  rc = INTERLOCK_OPEN;



 else if (is_slot_enabled(ctrl, hp_slot))
  rc = CARD_FUNCTIONING;
 else {
  mutex_lock(&ctrl->crit_sect);


  enable_slot_power(ctrl, hp_slot);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);



  temp_byte = readb(ctrl->hpc_reg + SLOT_POWER);
  writeb(0x00, ctrl->hpc_reg + SLOT_POWER);
  writeb(temp_byte, ctrl->hpc_reg + SLOT_POWER);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);

  adapter_speed = get_adapter_speed(ctrl, hp_slot);
  if (bus->cur_bus_speed != adapter_speed)
   if (set_controller_speed(ctrl, adapter_speed, hp_slot))
    rc = WRONG_BUS_FREQUENCY;


  disable_slot_power(ctrl, hp_slot);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);

  mutex_unlock(&ctrl->crit_sect);

  if (rc)
   return rc;

  mutex_lock(&ctrl->crit_sect);

  slot_enable(ctrl, hp_slot);
  green_LED_blink(ctrl, hp_slot);

  amber_LED_off(ctrl, hp_slot);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);

  mutex_unlock(&ctrl->crit_sect);


  long_delay(1*HZ);


  if (func->status == 0xFF) {

   rc = POWER_FAILURE;
   func->status = 0;
  } else
   rc = cpqhp_valid_replace(ctrl, func);

  if (!rc) {


   rc = cpqhp_configure_board(ctrl, func);
   mutex_lock(&ctrl->crit_sect);

   amber_LED_on(ctrl, hp_slot);
   green_LED_off(ctrl, hp_slot);
   slot_disable(ctrl, hp_slot);

   set_SOGO(ctrl);


   wait_for_ctrl_irq(ctrl);

   mutex_unlock(&ctrl->crit_sect);

   if (rc)
    return rc;
   else
    return 1;

  } else {







   mutex_lock(&ctrl->crit_sect);

   amber_LED_on(ctrl, hp_slot);
   green_LED_off(ctrl, hp_slot);
   slot_disable(ctrl, hp_slot);

   set_SOGO(ctrl);


   wait_for_ctrl_irq(ctrl);

   mutex_unlock(&ctrl->crit_sect);
  }

 }
 return rc;

}
