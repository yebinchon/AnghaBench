
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct ctcm_priv* ml_priv; } ;
struct TYPE_2__ {int tx_errors; int tx_dropped; } ;
struct ctcm_priv {int fsm; TYPE_1__ stats; } ;
struct channel {int id; int timer; int flags; struct net_device* netdev; } ;
typedef int fsm_instance ;


 int CHANNEL_DIRECTION (int ) ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,char*) ;
 int CTCM_FUNTAIL ;
 int CTCM_READ ;
 int CTC_DBF_ERROR ;
 int CTC_STATE_RXERR ;
 int CTC_STATE_TXERR ;
 int DEV_EVENT_RXDOWN ;
 int DEV_EVENT_TXDOWN ;
 int ERROR ;
 scalar_t__ IS_MPC (struct channel*) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_newstate (int *,int ) ;

__attribute__((used)) static void ctcm_chx_iofatal(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;
 int rd = CHANNEL_DIRECTION(ch->flags);

 fsm_deltimer(&ch->timer);
 CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
  "%s: %s: %s unrecoverable channel error",
   CTCM_FUNTAIL, ch->id, rd == CTCM_READ ? "RX" : "TX");

 if (IS_MPC(ch)) {
  priv->stats.tx_dropped++;
  priv->stats.tx_errors++;
 }
 if (rd == CTCM_READ) {
  fsm_newstate(fi, CTC_STATE_RXERR);
  fsm_event(priv->fsm, DEV_EVENT_RXDOWN, dev);
 } else {
  fsm_newstate(fi, CTC_STATE_TXERR);
  fsm_event(priv->fsm, DEV_EVENT_TXDOWN, dev);
 }
}
