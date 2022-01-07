
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {int fsm; scalar_t__ send_qllc_disc; scalar_t__ port_persist; int * estconnfunc; int * allochanfunc; int timer; scalar_t__ channels_terminating; } ;
struct ctcm_priv {int restart_timer; struct mpc_group* mpcg; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_DEBUG ;
 int MPCG_EVENT_INOP ;
 int MPC_SETUP ;
 int ctcm_close (struct net_device*) ;
 struct net_device* ctcmpc_get_dev (int) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int netdev_refcnt_read (struct net_device*) ;

void ctc_mpc_dealloc_ch(int port_num)
{
 struct net_device *dev;
 struct ctcm_priv *priv;
 struct mpc_group *grp;

 dev = ctcmpc_get_dev(port_num);
 if (dev == ((void*)0))
  return;
 priv = dev->ml_priv;
 grp = priv->mpcg;

 CTCM_DBF_TEXT_(MPC_SETUP, CTC_DBF_DEBUG,
   "%s: %s: refcount = %d\n",
   CTCM_FUNTAIL, dev->name, netdev_refcnt_read(dev));

 fsm_deltimer(&priv->restart_timer);
 grp->channels_terminating = 0;
 fsm_deltimer(&grp->timer);
 grp->allochanfunc = ((void*)0);
 grp->estconnfunc = ((void*)0);
 grp->port_persist = 0;
 grp->send_qllc_disc = 0;
 fsm_event(grp->fsm, MPCG_EVENT_INOP, dev);

 ctcm_close(dev);
 return;
}
