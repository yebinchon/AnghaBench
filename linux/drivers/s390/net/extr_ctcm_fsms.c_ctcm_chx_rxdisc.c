
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {struct channel** channel; int fsm; } ;
struct channel {int cdev; int * fsm; int timer; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ) ;
 int CTCM_FUNTAIL ;
 size_t CTCM_WRITE ;
 int CTC_DBF_NOTICE ;
 int CTC_STATE_DTERM ;
 int DEV_EVENT_RXDOWN ;
 int DEV_EVENT_TXDOWN ;
 int TRACE ;
 int ccw_device_halt (int ,int ) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_rxdisc(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct channel *ch2;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;

 CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s: %s: remote disconnect - re-init ...",
    CTCM_FUNTAIL, dev->name);
 fsm_deltimer(&ch->timer);



 fsm_event(priv->fsm, DEV_EVENT_RXDOWN, dev);
 fsm_event(priv->fsm, DEV_EVENT_TXDOWN, dev);

 fsm_newstate(fi, CTC_STATE_DTERM);
 ch2 = priv->channel[CTCM_WRITE];
 fsm_newstate(ch2->fsm, CTC_STATE_DTERM);

 ccw_device_halt(ch->cdev, 0);
 ccw_device_halt(ch2->cdev, 0);
}
