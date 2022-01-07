
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_usb_send_context {int tx_hdr_size; int pkt_type; int need_ack; int tx_rate; int frame_len; TYPE_1__* skb; struct vnt_private* priv; } ;
struct vnt_tx_datahead_g {void* duration_a; int hdr; void* time_stamp_off_b; void* time_stamp_off_a; void* duration_b; int b; int a; } ;
struct vnt_private {int current_aid; int top_cck_basic_rate; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef void* __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;


 int BIT (int) ;
 int PK_TYPE_11B ;
 void* cpu_to_le16 (int) ;
 scalar_t__ ieee80211_is_pspoll (int ) ;
 int le16_to_cpu (void*) ;
 void* vnt_get_duration_le (struct vnt_private*,int ,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int ,int ,int ,int *) ;
 int vnt_mac_hdr_pos (struct vnt_usb_send_context*,int *) ;
 void* vnt_time_stamp_off (struct vnt_private*,int ) ;

__attribute__((used)) static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
          struct vnt_tx_datahead_g *buf)
{
 struct vnt_private *priv = tx_context->priv;
 struct ieee80211_hdr *hdr =
    (struct ieee80211_hdr *)tx_context->skb->data;
 u32 frame_len = tx_context->frame_len;
 u16 rate = tx_context->tx_rate;
 u8 need_ack = tx_context->need_ack;


 vnt_get_phy_field(priv, frame_len, rate, tx_context->pkt_type, &buf->a);
 vnt_get_phy_field(priv, frame_len, priv->top_cck_basic_rate,
     PK_TYPE_11B, &buf->b);


 if (ieee80211_is_pspoll(hdr->frame_control)) {
  __le16 dur = cpu_to_le16(priv->current_aid | BIT(14) | BIT(15));

  buf->duration_a = dur;
  buf->duration_b = dur;
 } else {
  buf->duration_a = vnt_get_duration_le(priv,
      tx_context->pkt_type, need_ack);
  buf->duration_b = vnt_get_duration_le(priv,
            PK_TYPE_11B, need_ack);
 }

 buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 buf->time_stamp_off_b = vnt_time_stamp_off(priv,
         priv->top_cck_basic_rate);

 tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);

 return le16_to_cpu(buf->duration_a);
}
