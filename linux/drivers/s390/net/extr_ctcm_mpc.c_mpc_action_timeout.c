
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int fsm; } ;
struct ctcm_priv {struct channel** channel; struct mpc_group* mpcg; } ;
struct channel {int fsm; } ;
typedef int fsm_instance ;


 int CH_XID0_PENDING ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ) ;
 int CTCM_FUNTAIL ;
 size_t CTCM_READ ;
 size_t CTCM_WRITE ;
 int CTC_DBF_DEBUG ;
 int MPCG_EVENT_INOP ;

 int MPC_TRACE ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_getstate (int ) ;

__attribute__((used)) static void mpc_action_timeout(fsm_instance *fi, int event, void *arg)
{
 struct net_device *dev = arg;
 struct ctcm_priv *priv;
 struct mpc_group *grp;
 struct channel *wch;
 struct channel *rch;

 priv = dev->ml_priv;
 grp = priv->mpcg;
 wch = priv->channel[CTCM_WRITE];
 rch = priv->channel[CTCM_READ];

 switch (fsm_getstate(grp->fsm)) {
 case 128:



  if ((fsm_getstate(rch->fsm) == CH_XID0_PENDING) &&
     (fsm_getstate(wch->fsm) == CH_XID0_PENDING))
   break;

 default:
  fsm_event(grp->fsm, MPCG_EVENT_INOP, dev);
 }

 CTCM_DBF_TEXT_(MPC_TRACE, CTC_DBF_DEBUG,
   "%s: dev=%s exit",
   CTCM_FUNTAIL, dev->name);
 return;
}
