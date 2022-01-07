
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int partner_type; scalar_t__ pwr_op_mode; } ;
struct ucsi_connector {struct typec_partner* partner; int num; TYPE_1__* ucsi; int port; TYPE_2__ status; } ;
struct typec_partner_desc {int usb_pd; int accessory; } ;
struct typec_partner {int dummy; } ;
typedef int desc ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (struct typec_partner*) ;
 int PTR_ERR (struct typec_partner*) ;
 int TYPEC_ACCESSORY_AUDIO ;
 int TYPEC_ACCESSORY_DEBUG ;


 scalar_t__ UCSI_CONSTAT_PWR_OPMODE_PD ;
 int dev_err (int ,char*,int ,int) ;
 int memset (struct typec_partner_desc*,int ,int) ;
 struct typec_partner* typec_register_partner (int ,struct typec_partner_desc*) ;

__attribute__((used)) static int ucsi_register_partner(struct ucsi_connector *con)
{
 struct typec_partner_desc desc;
 struct typec_partner *partner;

 if (con->partner)
  return 0;

 memset(&desc, 0, sizeof(desc));

 switch (con->status.partner_type) {
 case 128:
  desc.accessory = TYPEC_ACCESSORY_DEBUG;
  break;
 case 129:
  desc.accessory = TYPEC_ACCESSORY_AUDIO;
  break;
 default:
  break;
 }

 desc.usb_pd = con->status.pwr_op_mode == UCSI_CONSTAT_PWR_OPMODE_PD;

 partner = typec_register_partner(con->port, &desc);
 if (IS_ERR(partner)) {
  dev_err(con->ucsi->dev,
   "con%d: failed to register partner (%ld)\n", con->num,
   PTR_ERR(partner));
  return PTR_ERR(partner);
 }

 con->partner = partner;

 return 0;
}
