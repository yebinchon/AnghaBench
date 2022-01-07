
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int handle; } ;


 int VPCCMD_R_SPECIAL_BUTTONS ;
 int ideapad_input_report (struct ideapad_private*,int) ;
 int pr_info (char*,unsigned long) ;
 int read_ec_data (int ,int ,unsigned long*) ;
 scalar_t__ test_bit (unsigned long,unsigned long*) ;

__attribute__((used)) static void ideapad_check_special_buttons(struct ideapad_private *priv)
{
 unsigned long bit, value;

 read_ec_data(priv->adev->handle, VPCCMD_R_SPECIAL_BUTTONS, &value);

 for (bit = 0; bit < 16; bit++) {
  if (test_bit(bit, &value)) {
   switch (bit) {
   case 0:
   case 6:

    ideapad_input_report(priv, 65);
    break;
   case 1:

    ideapad_input_report(priv, 64);
    break;
   default:
    pr_info("Unknown special button: %lu\n", bit);
    break;
   }
  }
 }
}
