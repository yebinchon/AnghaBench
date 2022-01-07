
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void* id; void* len; } ;
struct wsm_tx {int queue_id; TYPE_3__ hdr; } ;
struct TYPE_7__ {int offset; } ;
struct cw1200_txinfo {int queue; TYPE_4__* skb; TYPE_2__ txpriv; } ;
struct cw1200_common {TYPE_1__* hw; } ;
struct TYPE_9__ {int len; } ;
struct TYPE_6__ {int wiphy; } ;


 void* __cpu_to_le16 (int) ;
 int memset (struct wsm_tx*,int ,int) ;
 int skb_headroom (TYPE_4__*) ;
 struct wsm_tx* skb_push (TYPE_4__*,int) ;
 int wiphy_err (int ,char*,int) ;
 int wsm_queue_id_to_wsm (int ) ;

__attribute__((used)) static struct wsm_tx *
cw1200_tx_h_wsm(struct cw1200_common *priv,
  struct cw1200_txinfo *t)
{
 struct wsm_tx *wsm;

 if (skb_headroom(t->skb) < sizeof(struct wsm_tx)) {
  wiphy_err(priv->hw->wiphy,
     "Bug: no space allocated for WSM header. headroom: %d\n",
     skb_headroom(t->skb));
  return ((void*)0);
 }

 wsm = skb_push(t->skb, sizeof(struct wsm_tx));
 t->txpriv.offset += sizeof(struct wsm_tx);
 memset(wsm, 0, sizeof(*wsm));
 wsm->hdr.len = __cpu_to_le16(t->skb->len);
 wsm->hdr.id = __cpu_to_le16(0x0004);
 wsm->queue_id = wsm_queue_id_to_wsm(t->queue);
 return wsm;
}
