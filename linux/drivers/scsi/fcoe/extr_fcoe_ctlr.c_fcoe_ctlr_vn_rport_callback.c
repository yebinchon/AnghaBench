
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fcoe_rport {int login_count; } ;
struct fcoe_ctlr {int ctlr_mutex; } ;
struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {TYPE_2__ ids; } ;
struct TYPE_3__ {struct fcoe_ctlr* priv; } ;
struct fc_lport {TYPE_1__ disc; } ;
typedef enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;


 int FCOE_CTLR_VN2VN_LOGIN_LIMIT ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int ,...) ;




 int fc_rport_logoff (struct fc_rport_priv*) ;
 struct fcoe_rport* fcoe_ctlr_rport (struct fc_rport_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_ctlr_vn_rport_callback(struct fc_lport *lport,
     struct fc_rport_priv *rdata,
     enum fc_rport_event event)
{
 struct fcoe_ctlr *fip = lport->disc.priv;
 struct fcoe_rport *frport = fcoe_ctlr_rport(rdata);

 LIBFCOE_FIP_DBG(fip, "vn_rport_callback %x event %d\n",
   rdata->ids.port_id, event);

 mutex_lock(&fip->ctlr_mutex);
 switch (event) {
 case 129:
  frport->login_count = 0;
  break;
 case 130:
 case 131:
 case 128:
  frport->login_count++;
  if (frport->login_count > FCOE_CTLR_VN2VN_LOGIN_LIMIT) {
   LIBFCOE_FIP_DBG(fip,
     "rport FLOGI limited port_id %6.6x\n",
     rdata->ids.port_id);
   fc_rport_logoff(rdata);
  }
  break;
 default:
  break;
 }
 mutex_unlock(&fip->ctlr_mutex);
}
