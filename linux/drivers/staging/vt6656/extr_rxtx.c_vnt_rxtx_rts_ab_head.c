
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_usb_send_context {int tx_rate; int pkt_type; struct vnt_private* priv; } ;
struct vnt_rts_ab {int data_head; int duration; int data; int ab; } ;
struct vnt_private {int top_ofdm_basic_rate; } ;


 int RTSDUR_AA ;
 int vnt_fill_ieee80211_rts (struct vnt_usb_send_context*,int *,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int,int ,int ,int *) ;
 int vnt_get_rtscts_duration_le (struct vnt_usb_send_context*,int ,int ,int) ;
 int vnt_rxtx_datahead_ab (struct vnt_usb_send_context*,int *) ;

__attribute__((used)) static u16 vnt_rxtx_rts_ab_head(struct vnt_usb_send_context *tx_context,
    struct vnt_rts_ab *buf)
{
 struct vnt_private *priv = tx_context->priv;
 u16 current_rate = tx_context->tx_rate;
 u16 rts_frame_len = 20;

 vnt_get_phy_field(priv, rts_frame_len, priv->top_ofdm_basic_rate,
     tx_context->pkt_type, &buf->ab);

 buf->duration = vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA,
         tx_context->pkt_type,
         current_rate);

 vnt_fill_ieee80211_rts(tx_context, &buf->data, buf->duration);

 return vnt_rxtx_datahead_ab(tx_context, &buf->data_head);
}
