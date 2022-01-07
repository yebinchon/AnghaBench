
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;
struct channel {int id; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ) ;
 int CTCM_FUNTAIL ;
 int CTC_DBF_ERROR ;
 int CTC_STATE_RXERR ;
 int DEV_EVENT_RXDOWN ;
 int ERROR ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_rxinitfail(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;

 CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
   "%s(%s): RX %s busy, init. fail",
    CTCM_FUNTAIL, dev->name, ch->id);
 fsm_newstate(fi, CTC_STATE_RXERR);
 fsm_event(priv->fsm, DEV_EVENT_RXDOWN, dev);
}
