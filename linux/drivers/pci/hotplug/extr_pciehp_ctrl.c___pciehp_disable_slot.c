
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct controller {int dummy; } ;


 int EINVAL ;
 scalar_t__ POWER_CTRL (struct controller*) ;
 int ctrl_info (struct controller*,char*,int ) ;
 int pciehp_get_power_status (struct controller*,scalar_t__*) ;
 int remove_board (struct controller*,int) ;
 int slot_name (struct controller*) ;

__attribute__((used)) static int __pciehp_disable_slot(struct controller *ctrl, bool safe_removal)
{
 u8 getstatus = 0;

 if (POWER_CTRL(ctrl)) {
  pciehp_get_power_status(ctrl, &getstatus);
  if (!getstatus) {
   ctrl_info(ctrl, "Slot(%s): Already disabled\n",
      slot_name(ctrl));
   return -EINVAL;
  }
 }

 remove_board(ctrl, safe_removal);
 return 0;
}
