
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ PDA_PSY_TO_CHANGE ;
 scalar_t__ ac_status ;
 scalar_t__ new_ac_status ;
 scalar_t__ new_usb_status ;
 int pda_psy_ac ;
 int pda_psy_usb ;
 int power_supply_changed (int ) ;
 scalar_t__ usb_status ;

__attribute__((used)) static void supply_work_func(struct work_struct *work)
{
 if (ac_status == PDA_PSY_TO_CHANGE) {
  ac_status = new_ac_status;
  power_supply_changed(pda_psy_ac);
 }

 if (usb_status == PDA_PSY_TO_CHANGE) {
  usb_status = new_usb_status;
  power_supply_changed(pda_psy_usb);
 }
}
