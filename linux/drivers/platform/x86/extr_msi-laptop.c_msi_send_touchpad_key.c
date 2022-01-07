
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct work_struct {int dummy; } ;


 int KEY_TOUCHPAD_OFF ;
 int KEY_TOUCHPAD_ON ;
 int MSI_STANDARD_EC_FUNCTIONS_ADDRESS ;
 int MSI_STANDARD_EC_TOUCHPAD_MASK ;
 int ec_read (int ,int*) ;
 int msi_laptop_input_dev ;
 int sparse_keymap_report_event (int ,int ,int,int) ;

__attribute__((used)) static void msi_send_touchpad_key(struct work_struct *ignored)
{
 u8 rdata;
 int result;

 result = ec_read(MSI_STANDARD_EC_FUNCTIONS_ADDRESS, &rdata);
 if (result < 0)
  return;

 sparse_keymap_report_event(msi_laptop_input_dev,
  (rdata & MSI_STANDARD_EC_TOUCHPAD_MASK) ?
  KEY_TOUCHPAD_ON : KEY_TOUCHPAD_OFF, 1, 1);
}
