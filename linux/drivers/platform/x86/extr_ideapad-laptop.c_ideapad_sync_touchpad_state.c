
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int handle; } ;


 int I8042_CMD_AUX_DISABLE ;
 int I8042_CMD_AUX_ENABLE ;
 int VPCCMD_R_TOUCHPAD ;
 int i8042_command (unsigned char*,int ) ;
 int ideapad_input_report (struct ideapad_private*,int) ;
 int read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static void ideapad_sync_touchpad_state(struct ideapad_private *priv)
{
 unsigned long value;


 if (!read_ec_data(priv->adev->handle, VPCCMD_R_TOUCHPAD, &value)) {




  unsigned char param;
  i8042_command(&param, value ? I8042_CMD_AUX_ENABLE :
         I8042_CMD_AUX_DISABLE);
  ideapad_input_report(priv, value ? 67 : 66);
 }
}
