
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;
struct channel {int th_seg; int th_seq_num; int collect_lock; scalar_t__ collect_len; int collect_queue; int sweep_queue; int io_queue; int flags; int * trans_skb; int * ccw; int sweep_timer; int timer; int id; struct net_device* netdev; } ;
typedef int fsm_instance ;


 scalar_t__ CHANNEL_DIRECTION (int ) ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int ,int) ;
 int CTCM_FUNTAIL ;
 scalar_t__ CTCM_READ ;
 int CTC_DBF_NOTICE ;
 int CTC_STATE_STOPPED ;
 int DEV_EVENT_RXDOWN ;
 int DEV_EVENT_TXDOWN ;
 scalar_t__ IS_MPC (struct channel*) ;
 int SETUP ;
 int clear_normalized_cda (int *) ;
 int ctcm_purge_skb_queue (int *) ;
 int dev_kfree_skb_any (int *) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_newstate (int *,int) ;
 int skb_queue_purge (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ctcm_chx_cleanup(fsm_instance *fi, int state,
  struct channel *ch)
{
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_NOTICE,
   "%s(%s): %s[%d]\n",
   CTCM_FUNTAIL, dev->name, ch->id, state);

 fsm_deltimer(&ch->timer);
 if (IS_MPC(ch))
  fsm_deltimer(&ch->sweep_timer);

 fsm_newstate(fi, state);
 if (state == CTC_STATE_STOPPED && ch->trans_skb != ((void*)0)) {
  clear_normalized_cda(&ch->ccw[1]);
  dev_kfree_skb_any(ch->trans_skb);
  ch->trans_skb = ((void*)0);
 }

 ch->th_seg = 0x00;
 ch->th_seq_num = 0x00;
 if (CHANNEL_DIRECTION(ch->flags) == CTCM_READ) {
  skb_queue_purge(&ch->io_queue);
  fsm_event(priv->fsm, DEV_EVENT_RXDOWN, dev);
 } else {
  ctcm_purge_skb_queue(&ch->io_queue);
  if (IS_MPC(ch))
   ctcm_purge_skb_queue(&ch->sweep_queue);
  spin_lock(&ch->collect_lock);
  ctcm_purge_skb_queue(&ch->collect_queue);
  ch->collect_len = 0;
  spin_unlock(&ch->collect_lock);
  fsm_event(priv->fsm, DEV_EVENT_TXDOWN, dev);
 }
}
