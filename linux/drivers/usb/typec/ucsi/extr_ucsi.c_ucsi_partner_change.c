
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int partner_type; } ;
struct ucsi_connector {int num; TYPE_1__* ucsi; int complete; int port; TYPE_2__ status; int partner; } ;
struct TYPE_3__ {int dev; } ;


 int TYPEC_DEVICE ;
 int TYPEC_HOST ;


 int UCSI_RECIPIENT_SOP ;
 int complete (int *) ;
 int completion_done (int *) ;
 int dev_err (int ,char*,int ) ;
 int typec_set_data_role (int ,int ) ;
 int ucsi_altmode_update_active (struct ucsi_connector*) ;
 int ucsi_register_altmodes (struct ucsi_connector*,int ) ;

__attribute__((used)) static void ucsi_partner_change(struct ucsi_connector *con)
{
 int ret;

 if (!con->partner)
  return;

 switch (con->status.partner_type) {
 case 128:
  typec_set_data_role(con->port, TYPEC_HOST);
  break;
 case 129:
  typec_set_data_role(con->port, TYPEC_DEVICE);
  break;
 default:
  break;
 }


 if (!completion_done(&con->complete))
  complete(&con->complete);


 ret = ucsi_register_altmodes(con, UCSI_RECIPIENT_SOP);
 if (ret)
  dev_err(con->ucsi->dev,
   "con%d: failed to register partner alternate modes\n",
   con->num);
 else
  ucsi_altmode_update_active(con);
}
