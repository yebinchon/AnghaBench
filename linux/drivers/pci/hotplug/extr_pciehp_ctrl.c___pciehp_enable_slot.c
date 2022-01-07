
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct controller {int dummy; } ;


 int ENODEV ;
 scalar_t__ MRL_SENS (struct controller*) ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int board_added (struct controller*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_latch_status (struct controller*,scalar_t__*) ;
 int pciehp_get_power_status (struct controller*,scalar_t__*) ;
 int slot_name (struct controller*) ;

__attribute__((used)) static int __pciehp_enable_slot(struct controller *ctrl)
{
 u8 getstatus = 0;

 if (MRL_SENS(ctrl)) {
  pciehp_get_latch_status(ctrl, &getstatus);
  if (getstatus) {
   ctrl_info(ctrl, "Slot(%s): Latch open\n",
      slot_name(ctrl));
   return -ENODEV;
  }
 }

 if (POWER_CTRL(ctrl)) {
  pciehp_get_power_status(ctrl, &getstatus);
  if (getstatus) {
   ctrl_info(ctrl, "Slot(%s): Already enabled\n",
      slot_name(ctrl));
   return 0;
  }
 }

 return board_added(ctrl);
}
