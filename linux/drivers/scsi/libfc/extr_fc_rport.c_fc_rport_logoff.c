
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {scalar_t__ rp_state; int rp_mutex; int flags; TYPE_2__ ids; struct fc_lport* local_port; } ;
struct TYPE_3__ {int (* exch_mgr_reset ) (struct fc_lport*,int ,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*) ;
 int FC_RP_STARTED ;
 int RPORT_EV_STOP ;
 scalar_t__ RPORT_ST_DELETE ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_enter_logo (struct fc_rport_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fc_lport*,int ,int ) ;
 int stub2 (struct fc_lport*,int ,int ) ;

int fc_rport_logoff(struct fc_rport_priv *rdata)
{
 struct fc_lport *lport = rdata->local_port;
 u32 port_id = rdata->ids.port_id;

 mutex_lock(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Remove port\n");

 rdata->flags &= ~FC_RP_STARTED;
 if (rdata->rp_state == RPORT_ST_DELETE) {
  FC_RPORT_DBG(rdata, "Port in Delete state, not removing\n");
  goto out;
 }






 lport->tt.exch_mgr_reset(lport, 0, port_id);
 lport->tt.exch_mgr_reset(lport, port_id, 0);

 fc_rport_enter_logo(rdata);





 fc_rport_enter_delete(rdata, RPORT_EV_STOP);
out:
 mutex_unlock(&rdata->rp_mutex);
 return 0;
}
