
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int conf; } ;
struct ucsi_dp {TYPE_2__* con; int offset; int override; TYPE_1__ data; } ;
struct ucsi_control {int raw_cmd; } ;
struct TYPE_4__ {int ucsi; int num; } ;


 int DP_CONF_GET_PIN_ASSIGN (int ) ;
 int UCSI_CMD_SET_NEW_CAM (int ,int,int ,int ) ;
 int ucsi_send_command (int ,struct ucsi_control*,int *,int ) ;

__attribute__((used)) static int ucsi_displayport_configure(struct ucsi_dp *dp)
{
 u32 pins = DP_CONF_GET_PIN_ASSIGN(dp->data.conf);
 struct ucsi_control ctrl;

 if (!dp->override)
  return 0;

 ctrl.raw_cmd = UCSI_CMD_SET_NEW_CAM(dp->con->num, 1, dp->offset, pins);

 return ucsi_send_command(dp->con->ucsi, &ctrl, ((void*)0), 0);
}
