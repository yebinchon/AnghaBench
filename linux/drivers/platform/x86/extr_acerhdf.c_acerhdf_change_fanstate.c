
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char cmd_off; unsigned char cmd_auto; } ;
struct TYPE_6__ {scalar_t__ mcmd_enable; int fanreg; TYPE_1__ cmd; } ;
struct TYPE_5__ {unsigned char moff; int mreg; } ;


 int ACERHDF_FAN_AUTO ;
 int ACERHDF_FAN_OFF ;
 TYPE_3__ ctrl_cfg ;
 int ec_write (int ,unsigned char) ;
 int fanstate ;
 TYPE_2__ mcmd ;
 int pr_err (char*,int) ;
 int pr_notice (char*,...) ;
 scalar_t__ verbose ;

__attribute__((used)) static void acerhdf_change_fanstate(int state)
{
 unsigned char cmd;

 if (verbose)
  pr_notice("fan %s\n", state == ACERHDF_FAN_OFF ? "OFF" : "ON");

 if ((state != ACERHDF_FAN_OFF) && (state != ACERHDF_FAN_AUTO)) {
  pr_err("invalid fan state %d requested, setting to auto!\n",
         state);
  state = ACERHDF_FAN_AUTO;
 }

 cmd = (state == ACERHDF_FAN_OFF) ? ctrl_cfg.cmd.cmd_off
      : ctrl_cfg.cmd.cmd_auto;
 fanstate = state;

 ec_write(ctrl_cfg.fanreg, cmd);

 if (ctrl_cfg.mcmd_enable && state == ACERHDF_FAN_OFF) {
  if (verbose)
   pr_notice("turning off fan manually\n");
  ec_write(mcmd.mreg, mcmd.moff);
 }
}
