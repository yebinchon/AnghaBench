
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct mpc_group {void (* allochanfunc ) (int,int) ;int port_num; int port_persist; int alloc_called; int send_qllc_disc; int allocchan_callback_retries; int group_max_buflen; int fsm; int * saved_xid2; int outstanding_xid7_p2; int outstanding_xid7; int outstanding_xid2; int timer; } ;
struct ctcm_priv {int fsm; struct mpc_group* mpcg; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_INFO ;
 int DEV_EVENT_START ;
 int MPCG_EVENT_INOP ;




 int MPC_SETUP ;
 int ctcm_open (struct net_device*) ;
 struct net_device* ctcmpc_get_dev (int) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_getstate (int ) ;
 int fsm_getstate_str (int ) ;
 void stub1 (int,int) ;

int ctc_mpc_alloc_channel(int port_num, void (*callback)(int, int))
{
 struct net_device *dev;
 struct mpc_group *grp;
 struct ctcm_priv *priv;

 dev = ctcmpc_get_dev(port_num);
 if (dev == ((void*)0))
  return 1;
 priv = dev->ml_priv;
 grp = priv->mpcg;

 grp->allochanfunc = callback;
 grp->port_num = port_num;
 grp->port_persist = 1;

 CTCM_DBF_TEXT_(MPC_SETUP, CTC_DBF_INFO,
   "%s(%s): state=%s",
   CTCM_FUNTAIL, dev->name, fsm_getstate_str(grp->fsm));

 switch (fsm_getstate(grp->fsm)) {
 case 131:

  grp->alloc_called = 1;
  break;
 case 129:





  if (callback)
   grp->send_qllc_disc = 1;

 case 128:
  fsm_deltimer(&grp->timer);
  grp->outstanding_xid2 = 0;
  grp->outstanding_xid7 = 0;
  grp->outstanding_xid7_p2 = 0;
  grp->saved_xid2 = ((void*)0);
  if (callback)
   ctcm_open(dev);
  fsm_event(priv->fsm, DEV_EVENT_START, dev);
  break;
 case 130:



  grp->allocchan_callback_retries++;
  if (grp->allocchan_callback_retries < 4) {
   if (grp->allochanfunc)
    grp->allochanfunc(grp->port_num,
        grp->group_max_buflen);
  } else {


   fsm_event(grp->fsm, MPCG_EVENT_INOP, dev);
   grp->allocchan_callback_retries = 0;
  }
  break;
 }

 return 0;
}
