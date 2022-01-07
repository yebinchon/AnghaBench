
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct ctcm_priv* ml_priv; } ;
struct mpc_group {int fsm; } ;
struct ctcm_priv {struct mpc_group* mpcg; } ;
struct channel {struct net_device* netdev; } ;
typedef int fsm_instance ;


 int MPCG_EVENT_XID0DO ;
 int fsm_event (int ,int ,struct channel*) ;

__attribute__((used)) static void ctcmpc_chx_resend(fsm_instance *fsm, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;
 struct mpc_group *grp = priv->mpcg;

 fsm_event(grp->fsm, MPCG_EVENT_XID0DO, ch);
 return;
}
