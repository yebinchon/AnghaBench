
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpcg_info {struct channel* ch; } ;
struct mpc_group {int send_qllc_disc; int fsm; } ;
struct ctcm_priv {struct mpc_group* mpcg; } ;
struct channel {int id; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_NOTICE ;
 int MPCG_EVENT_INOP ;
 int MPC_TRACE ;
 int fsm_event (int ,int ,struct net_device*) ;

void mpc_action_discontact(fsm_instance *fi, int event, void *arg)
{
 struct mpcg_info *mpcginfo = arg;
 struct channel *ch = mpcginfo->ch;
 struct net_device *dev;
 struct ctcm_priv *priv;
 struct mpc_group *grp;

 if (ch) {
  dev = ch->netdev;
  if (dev) {
   priv = dev->ml_priv;
   if (priv) {
    CTCM_DBF_TEXT_(MPC_TRACE, CTC_DBF_NOTICE,
     "%s: %s: %s\n",
     CTCM_FUNTAIL, dev->name, ch->id);
    grp = priv->mpcg;
    grp->send_qllc_disc = 1;
    fsm_event(grp->fsm, MPCG_EVENT_INOP, dev);
   }
  }
 }

 return;
}
