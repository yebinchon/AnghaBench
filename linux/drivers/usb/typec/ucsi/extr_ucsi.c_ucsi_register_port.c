
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ucsi_control {int dummy; } ;
struct TYPE_5__ {int op_mode; int partner_type; scalar_t__ connected; int pwr_dir; scalar_t__ consumer; scalar_t__ provider; } ;
struct typec_capability {int* accessory; int pr_set; int dr_set; int fwnode; int prefer_role; int pd_revision; int revision; int type; int data; } ;
struct ucsi_connector {int num; TYPE_2__ status; scalar_t__ partner; int port; TYPE_2__ cap; struct ucsi* ucsi; int lock; int complete; int work; struct typec_capability typec_cap; } ;
struct TYPE_4__ {int pd_version; int typec_version; } ;
struct ucsi {int dev; TYPE_1__ cap; struct ucsi_connector* connector; } ;
typedef enum typec_accessory { ____Placeholder_typec_accessory } typec_accessory ;


 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int TYPEC_ACCESSORY_AUDIO ;
 int TYPEC_ACCESSORY_DEBUG ;
 int TYPEC_DEVICE ;
 int TYPEC_HOST ;
 int TYPEC_NO_PREFERRED_ROLE ;
 int TYPEC_PORT_DFP ;
 int TYPEC_PORT_DRD ;
 int TYPEC_PORT_DRP ;
 int TYPEC_PORT_SNK ;
 int TYPEC_PORT_SRC ;
 int TYPEC_PORT_UFP ;
 int UCSI_CMD_GET_CONNECTOR_CAPABILITY (struct ucsi_control,int) ;
 int UCSI_CMD_GET_CONNECTOR_STATUS (struct ucsi_control,int) ;
 int UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY ;
 int UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY ;
 int UCSI_CONCAP_OPMODE_DFP ;
 int UCSI_CONCAP_OPMODE_DRP ;
 int UCSI_CONCAP_OPMODE_UFP ;


 int UCSI_RECIPIENT_CON ;
 int UCSI_RECIPIENT_SOP ;
 int dev_err (int ,char*,int) ;
 int init_completion (int *) ;
 int mutex_init (int *) ;
 int trace_ucsi_register_port (int,TYPE_2__*) ;
 int typec_register_port (int ,struct typec_capability*) ;
 int typec_set_data_role (int ,int ) ;
 int typec_set_pwr_role (int ,int ) ;
 int ucsi_altmode_update_active (struct ucsi_connector*) ;
 int ucsi_connector_change ;
 int ucsi_dr_swap ;
 int ucsi_find_fwnode (struct ucsi_connector*) ;
 int ucsi_pr_swap ;
 int ucsi_pwr_opmode_change (struct ucsi_connector*) ;
 int ucsi_register_altmodes (struct ucsi_connector*,int ) ;
 int ucsi_register_partner (struct ucsi_connector*) ;
 int ucsi_run_command (struct ucsi*,struct ucsi_control*,TYPE_2__*,int) ;

__attribute__((used)) static int ucsi_register_port(struct ucsi *ucsi, int index)
{
 struct ucsi_connector *con = &ucsi->connector[index];
 struct typec_capability *cap = &con->typec_cap;
 enum typec_accessory *accessory = cap->accessory;
 struct ucsi_control ctrl;
 int ret;

 INIT_WORK(&con->work, ucsi_connector_change);
 init_completion(&con->complete);
 mutex_init(&con->lock);
 con->num = index + 1;
 con->ucsi = ucsi;


 UCSI_CMD_GET_CONNECTOR_CAPABILITY(ctrl, con->num);
 ret = ucsi_run_command(ucsi, &ctrl, &con->cap, sizeof(con->cap));
 if (ret < 0)
  return ret;

 if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DRP)
  cap->data = TYPEC_PORT_DRD;
 else if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DFP)
  cap->data = TYPEC_PORT_DFP;
 else if (con->cap.op_mode & UCSI_CONCAP_OPMODE_UFP)
  cap->data = TYPEC_PORT_UFP;

 if (con->cap.provider && con->cap.consumer)
  cap->type = TYPEC_PORT_DRP;
 else if (con->cap.provider)
  cap->type = TYPEC_PORT_SRC;
 else if (con->cap.consumer)
  cap->type = TYPEC_PORT_SNK;

 cap->revision = ucsi->cap.typec_version;
 cap->pd_revision = ucsi->cap.pd_version;
 cap->prefer_role = TYPEC_NO_PREFERRED_ROLE;

 if (con->cap.op_mode & UCSI_CONCAP_OPMODE_AUDIO_ACCESSORY)
  *accessory++ = TYPEC_ACCESSORY_AUDIO;
 if (con->cap.op_mode & UCSI_CONCAP_OPMODE_DEBUG_ACCESSORY)
  *accessory = TYPEC_ACCESSORY_DEBUG;

 cap->fwnode = ucsi_find_fwnode(con);
 cap->dr_set = ucsi_dr_swap;
 cap->pr_set = ucsi_pr_swap;


 con->port = typec_register_port(ucsi->dev, cap);
 if (IS_ERR(con->port))
  return PTR_ERR(con->port);


 ret = ucsi_register_altmodes(con, UCSI_RECIPIENT_CON);
 if (ret)
  dev_err(ucsi->dev, "con%d: failed to register alt modes\n",
   con->num);


 UCSI_CMD_GET_CONNECTOR_STATUS(ctrl, con->num);
 ret = ucsi_run_command(ucsi, &ctrl, &con->status, sizeof(con->status));
 if (ret < 0) {
  dev_err(ucsi->dev, "con%d: failed to get status\n", con->num);
  return 0;
 }

 ucsi_pwr_opmode_change(con);
 typec_set_pwr_role(con->port, con->status.pwr_dir);

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


 if (con->status.connected)
  ucsi_register_partner(con);

 if (con->partner) {
  ret = ucsi_register_altmodes(con, UCSI_RECIPIENT_SOP);
  if (ret)
   dev_err(ucsi->dev,
    "con%d: failed to register alternate modes\n",
    con->num);
  else
   ucsi_altmode_update_active(con);
 }

 trace_ucsi_register_port(con->num, &con->status);

 return 0;
}
