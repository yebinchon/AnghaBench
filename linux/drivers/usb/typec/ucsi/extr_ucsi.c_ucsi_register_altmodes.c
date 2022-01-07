
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ucsi_control {int dummy; } ;
struct ucsi_connector {TYPE_2__* ucsi; int num; scalar_t__* partner_altmode; } ;
struct ucsi_altmode {int roles; scalar_t__ svid; int mid; int vdo; } ;
struct typec_altmode_desc {int roles; scalar_t__ svid; int mid; int vdo; } ;
typedef int desc ;
typedef int alt ;
struct TYPE_3__ {int features; int num_alt_modes; } ;
struct TYPE_4__ {TYPE_1__ cap; } ;


 int TYPEC_PORT_DRD ;
 int UCSI_CAP_ALT_MODE_DETAILS ;
 int UCSI_CMD_GET_ALTERNATE_MODES (struct ucsi_control,int ,int ,int,int) ;
 int UCSI_MAX_ALTMODES ;
 int UCSI_RECIPIENT_CON ;
 int UCSI_RECIPIENT_SOP ;
 int memset (struct ucsi_altmode*,int ,int) ;
 int ucsi_register_altmode (struct ucsi_connector*,struct ucsi_altmode*,int ) ;
 int ucsi_run_command (TYPE_2__*,struct ucsi_control*,struct ucsi_altmode*,int) ;

__attribute__((used)) static int ucsi_register_altmodes(struct ucsi_connector *con, u8 recipient)
{
 int max_altmodes = UCSI_MAX_ALTMODES;
 struct typec_altmode_desc desc;
 struct ucsi_altmode alt[2];
 struct ucsi_control ctrl;
 int num = 1;
 int ret;
 int len;
 int j;
 int i;

 if (!(con->ucsi->cap.features & UCSI_CAP_ALT_MODE_DETAILS))
  return 0;

 if (recipient == UCSI_RECIPIENT_SOP && con->partner_altmode[0])
  return 0;

 if (recipient == UCSI_RECIPIENT_CON)
  max_altmodes = con->ucsi->cap.num_alt_modes;

 for (i = 0; i < max_altmodes;) {
  memset(alt, 0, sizeof(alt));
  UCSI_CMD_GET_ALTERNATE_MODES(ctrl, recipient, con->num, i, 1);
  len = ucsi_run_command(con->ucsi, &ctrl, alt, sizeof(alt));
  if (len <= 0)
   return len;







  num = len / sizeof(alt[0]);
  i += num;

  for (j = 0; j < num; j++) {
   if (!alt[j].svid)
    return 0;

   memset(&desc, 0, sizeof(desc));
   desc.vdo = alt[j].mid;
   desc.svid = alt[j].svid;
   desc.roles = TYPEC_PORT_DRD;

   ret = ucsi_register_altmode(con, &desc, recipient);
   if (ret)
    return ret;
  }
 }

 return 0;
}
