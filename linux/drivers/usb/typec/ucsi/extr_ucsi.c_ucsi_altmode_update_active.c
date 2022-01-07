
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct ucsi_control {int dummy; } ;
struct ucsi_connector {struct typec_altmode const** partner_altmode; int * port_altmode; TYPE_3__* ucsi; int num; } ;
struct typec_altmode {int dummy; } ;
typedef int cur ;
struct TYPE_6__ {int dev; TYPE_2__* ppm; } ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int version; } ;


 int UCSI_CMD_GET_CURRENT_CAM (struct ucsi_control,int ) ;
 size_t UCSI_MAX_ALTMODES ;
 int dev_err (int ,char*) ;
 struct typec_altmode* typec_altmode_get_partner (int ) ;
 int typec_altmode_update_active (struct typec_altmode const*,int) ;
 int ucsi_run_command (TYPE_3__*,struct ucsi_control*,size_t*,int) ;

void ucsi_altmode_update_active(struct ucsi_connector *con)
{
 const struct typec_altmode *altmode = ((void*)0);
 struct ucsi_control ctrl;
 int ret;
 u8 cur;
 int i;

 UCSI_CMD_GET_CURRENT_CAM(ctrl, con->num);
 ret = ucsi_run_command(con->ucsi, &ctrl, &cur, sizeof(cur));
 if (ret < 0) {
  if (con->ucsi->ppm->data->version > 0x0100) {
   dev_err(con->ucsi->dev,
    "GET_CURRENT_CAM command failed\n");
   return;
  }
  cur = 0xff;
 }

 if (cur < UCSI_MAX_ALTMODES)
  altmode = typec_altmode_get_partner(con->port_altmode[cur]);

 for (i = 0; con->partner_altmode[i]; i++)
  typec_altmode_update_active(con->partner_altmode[i],
         con->partner_altmode[i] == altmode);
}
