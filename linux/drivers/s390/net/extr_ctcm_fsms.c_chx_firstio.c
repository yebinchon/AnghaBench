
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {struct ctcm_priv* ml_priv; } ;
struct ctcm_priv {int fsm; } ;
struct channel {scalar_t__ protocol; struct net_device* netdev; int flags; int timer; TYPE_2__* ccw; int cdev; TYPE_1__* trans_skb; int id; scalar_t__ sense_rc; } ;
typedef int fsm_instance ;
typedef int __u16 ;
struct TYPE_4__ {int count; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 scalar_t__ CHANNEL_DIRECTION (int ) ;
 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,...) ;
 int CTCM_FUNTAIL ;
 int CTCM_INITIAL_BLOCKLEN ;
 scalar_t__ CTCM_PROTO_OS390 ;
 scalar_t__ CTCM_PROTO_S390 ;
 scalar_t__ CTCM_READ ;
 int CTCM_TIME_5_SEC ;
 scalar_t__ CTCM_WRITE ;
 int CTC_DBF_DEBUG ;
 int CTC_DBF_NOTICE ;
 int CTC_EVENT_TIMER ;
 int CTC_STATE_RXINIT ;
 int CTC_STATE_SETUPWAIT ;
 int CTC_STATE_TXIDLE ;
 int CTC_STATE_TXINIT ;
 int DEV_EVENT_RXUP ;
 int DEV_EVENT_TXUP ;
 int TRACE ;
 int ccw_device_start (int ,TYPE_2__*,int ,int,int ) ;
 int chx_rxidle (int *,int,void*) ;
 int ctcm_ccw_check_rc (struct channel*,int,char*) ;
 scalar_t__ ctcm_checkalloc_buffer (struct channel*) ;
 int fsm_addtimer (int *,int ,int ,struct channel*) ;
 int fsm_deltimer (int *) ;
 int fsm_event (int ,int ,struct net_device*) ;
 int fsm_getstate (int *) ;
 int fsm_newstate (int *,int) ;

__attribute__((used)) static void chx_firstio(fsm_instance *fi, int event, void *arg)
{
 int rc;
 struct channel *ch = arg;
 int fsmstate = fsm_getstate(fi);

 CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
  "%s(%s) : %02x",
  CTCM_FUNTAIL, ch->id, fsmstate);

 ch->sense_rc = 0;
 if (fsmstate == CTC_STATE_TXIDLE)
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_DEBUG,
   "%s(%s): remote side issued READ?, init.\n",
    CTCM_FUNTAIL, ch->id);
 fsm_deltimer(&ch->timer);
 if (ctcm_checkalloc_buffer(ch))
  return;
 if ((fsmstate == CTC_STATE_SETUPWAIT) &&
     (ch->protocol == CTCM_PROTO_OS390)) {

  if (CHANNEL_DIRECTION(ch->flags) == CTCM_READ) {
   *((__u16 *)ch->trans_skb->data) = CTCM_INITIAL_BLOCKLEN;
   fsm_addtimer(&ch->timer, CTCM_TIME_5_SEC,
         CTC_EVENT_TIMER, ch);
   chx_rxidle(fi, event, arg);
  } else {
   struct net_device *dev = ch->netdev;
   struct ctcm_priv *priv = dev->ml_priv;
   fsm_newstate(fi, CTC_STATE_TXIDLE);
   fsm_event(priv->fsm, DEV_EVENT_TXUP, dev);
  }
  return;
 }





 if ((CHANNEL_DIRECTION(ch->flags) == CTCM_WRITE) ||
     (ch->protocol != CTCM_PROTO_S390))
  fsm_addtimer(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);

 *((__u16 *)ch->trans_skb->data) = CTCM_INITIAL_BLOCKLEN;
 ch->ccw[1].count = 2;

 fsm_newstate(fi, (CHANNEL_DIRECTION(ch->flags) == CTCM_READ)
       ? CTC_STATE_RXINIT : CTC_STATE_TXINIT);
 rc = ccw_device_start(ch->cdev, &ch->ccw[0], 0, 0xff, 0);
 if (rc != 0) {
  fsm_deltimer(&ch->timer);
  fsm_newstate(fi, CTC_STATE_SETUPWAIT);
  ctcm_ccw_check_rc(ch, rc, "init IO");
 }







 if ((CHANNEL_DIRECTION(ch->flags) == CTCM_READ) &&
     (ch->protocol == CTCM_PROTO_S390)) {
  struct net_device *dev = ch->netdev;
  struct ctcm_priv *priv = dev->ml_priv;
  fsm_event(priv->fsm, DEV_EVENT_RXUP, dev);
 }
}
