
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_rport_priv {int flags; int rp_state; int rp_mutex; } ;


 int FC_RPORT_DBG (struct fc_rport_priv*,char*,...) ;
 int FC_RP_STARTED ;



 int fc_rport_enter_adisc (struct fc_rport_priv*) ;
 int fc_rport_enter_flogi (struct fc_rport_priv*) ;
 int fc_rport_state (struct fc_rport_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fc_rport_login(struct fc_rport_priv *rdata)
{
 mutex_lock(&rdata->rp_mutex);

 if (rdata->flags & FC_RP_STARTED) {
  FC_RPORT_DBG(rdata, "port already started\n");
  mutex_unlock(&rdata->rp_mutex);
  return 0;
 }

 rdata->flags |= FC_RP_STARTED;
 switch (rdata->rp_state) {
 case 128:
  FC_RPORT_DBG(rdata, "ADISC port\n");
  fc_rport_enter_adisc(rdata);
  break;
 case 130:
  FC_RPORT_DBG(rdata, "Restart deleted port\n");
  break;
 case 129:
  FC_RPORT_DBG(rdata, "Login to port\n");
  fc_rport_enter_flogi(rdata);
  break;
 default:
  FC_RPORT_DBG(rdata, "Login in progress, state %s\n",
        fc_rport_state(rdata));
  break;
 }
 mutex_unlock(&rdata->rp_mutex);

 return 0;
}
