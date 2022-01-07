
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_2__ {int handle; } ;


 int VPCCMD_R_NOVO ;
 int ideapad_input_report (struct ideapad_private*,int) ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static void ideapad_input_novokey(struct ideapad_private *priv)
{
 unsigned long long_pressed;

 if (read_ec_data(priv->adev->handle, VPCCMD_R_NOVO, &long_pressed))
  return;
 if (long_pressed)
  ideapad_input_report(priv, 17);
 else
  ideapad_input_report(priv, 16);
}
