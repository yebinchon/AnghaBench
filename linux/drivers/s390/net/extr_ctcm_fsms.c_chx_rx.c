
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ data; } ;
struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct TYPE_9__ {int rx_length_errors; int rx_dropped; } ;
struct ctcm_priv {TYPE_4__ stats; } ;
struct channel {int max_bufsize; int protocol; TYPE_5__* ccw; int cdev; scalar_t__ trans_skb_data; int timer; struct sk_buff* trans_skb; TYPE_3__* irb; struct net_device* netdev; } ;
typedef int fsm_instance ;
typedef int __u16 ;
struct TYPE_10__ {int count; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_7__ {TYPE_1__ cmd; } ;
struct TYPE_8__ {TYPE_2__ scsw; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,int,...) ;
 int CTCM_FUNTAIL ;


 int CTC_DBF_NOTICE ;
 int TRACE ;
 int ccw_device_start (int ,TYPE_5__*,int ,int,int ) ;
 int ctcm_ccw_check_rc (struct channel*,int,char*) ;
 scalar_t__ ctcm_checkalloc_buffer (struct channel*) ;
 int ctcm_unpack_skb (struct channel*,struct sk_buff*) ;
 int ctcmpc_dump_skb (struct sk_buff*,int ) ;
 scalar_t__ do_debug ;
 int fsm_deltimer (int *) ;
 int skb_reset_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static void chx_rx(fsm_instance *fi, int event, void *arg)
{
 struct channel *ch = arg;
 struct net_device *dev = ch->netdev;
 struct ctcm_priv *priv = dev->ml_priv;
 int len = ch->max_bufsize - ch->irb->scsw.cmd.count;
 struct sk_buff *skb = ch->trans_skb;
 __u16 block_len = *((__u16 *)skb->data);
 int check_len;
 int rc;

 fsm_deltimer(&ch->timer);
 if (len < 8) {
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s(%s): got packet with length %d < 8\n",
     CTCM_FUNTAIL, dev->name, len);
  priv->stats.rx_dropped++;
  priv->stats.rx_length_errors++;
      goto again;
 }
 if (len > ch->max_bufsize) {
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s(%s): got packet with length %d > %d\n",
    CTCM_FUNTAIL, dev->name, len, ch->max_bufsize);
  priv->stats.rx_dropped++;
  priv->stats.rx_length_errors++;
      goto again;
 }




 switch (ch->protocol) {
 case 128:
 case 129:
  check_len = block_len + 2;
  break;
 default:
  check_len = block_len;
  break;
 }
 if ((len < block_len) || (len > check_len)) {
  CTCM_DBF_TEXT_(TRACE, CTC_DBF_NOTICE,
   "%s(%s): got block length %d != rx length %d\n",
    CTCM_FUNTAIL, dev->name, block_len, len);
  if (do_debug)
   ctcmpc_dump_skb(skb, 0);

  *((__u16 *)skb->data) = len;
  priv->stats.rx_dropped++;
  priv->stats.rx_length_errors++;
      goto again;
 }
 if (block_len > 2) {
  *((__u16 *)skb->data) = block_len - 2;
  ctcm_unpack_skb(ch, skb);
 }
 again:
 skb->data = ch->trans_skb_data;
 skb_reset_tail_pointer(skb);
 skb->len = 0;
 if (ctcm_checkalloc_buffer(ch))
  return;
 ch->ccw[1].count = ch->max_bufsize;
 rc = ccw_device_start(ch->cdev, &ch->ccw[0], 0, 0xff, 0);
 if (rc != 0)
  ctcm_ccw_check_rc(ch, rc, "normal RX");
}
