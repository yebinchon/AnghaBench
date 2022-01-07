
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {int rp_state; int flags; int retries; int rp_mutex; struct fc_lport* local_port; } ;
struct fc_lport {int point_to_multipoint; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*,int,int ,int ) ;
 int FC_RP_STARTED ;
 int RPORT_EV_FAILED ;
 int fc_rport_enter_delete (struct fc_rport_priv*,int ) ;
 int fc_rport_enter_logo (struct fc_rport_priv*) ;
 int fc_rport_enter_ready (struct fc_rport_priv*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void fc_rport_error(struct fc_rport_priv *rdata, int err)
{
 struct fc_lport *lport = rdata->local_port;

 lockdep_assert_held(&rdata->rp_mutex);

 FC_RPORT_DBG(rdata, "Error %d in state %s, retries %d\n",
       -err, fc_rport_state(rdata), rdata->retries);

 switch (rdata->rp_state) {
 case 134:
  rdata->flags &= ~FC_RP_STARTED;
  fc_rport_enter_delete(rdata, RPORT_EV_FAILED);
  break;
 case 132:
  if (lport->point_to_multipoint) {
   rdata->flags &= ~FC_RP_STARTED;
   fc_rport_enter_delete(rdata, RPORT_EV_FAILED);
  } else
   fc_rport_enter_logo(rdata);
  break;
 case 128:
  fc_rport_enter_ready(rdata);
  break;
 case 130:
 case 136:
  fc_rport_enter_logo(rdata);
  break;
 case 131:
 case 135:
 case 129:
 case 133:
  break;
 }
}
