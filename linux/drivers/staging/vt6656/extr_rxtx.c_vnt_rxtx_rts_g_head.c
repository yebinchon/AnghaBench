
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_usb_send_context {int tx_rate; int pkt_type; struct vnt_private* priv; } ;
struct vnt_rts_g {int data_head; void* duration_aa; int data; void* duration_ba; void* duration_bb; int a; int b; } ;
struct vnt_private {int top_cck_basic_rate; int top_ofdm_basic_rate; } ;


 int PK_TYPE_11B ;
 int RTSDUR_AA ;
 int RTSDUR_BA ;
 int RTSDUR_BB ;
 int vnt_fill_ieee80211_rts (struct vnt_usb_send_context*,int *,void*) ;
 int vnt_get_phy_field (struct vnt_private*,int,int,int ,int *) ;
 void* vnt_get_rtscts_duration_le (struct vnt_usb_send_context*,int ,int ,int) ;
 int vnt_rxtx_datahead_g (struct vnt_usb_send_context*,int *) ;

__attribute__((used)) static u16 vnt_rxtx_rts_g_head(struct vnt_usb_send_context *tx_context,
          struct vnt_rts_g *buf)
{
 struct vnt_private *priv = tx_context->priv;
 u16 rts_frame_len = 20;
 u16 current_rate = tx_context->tx_rate;

 vnt_get_phy_field(priv, rts_frame_len, priv->top_cck_basic_rate,
     PK_TYPE_11B, &buf->b);
 vnt_get_phy_field(priv, rts_frame_len, priv->top_ofdm_basic_rate,
     tx_context->pkt_type, &buf->a);

 buf->duration_bb = vnt_get_rtscts_duration_le(tx_context, RTSDUR_BB,
            PK_TYPE_11B,
            priv->top_cck_basic_rate);
 buf->duration_aa = vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA,
            tx_context->pkt_type,
            current_rate);
 buf->duration_ba = vnt_get_rtscts_duration_le(tx_context, RTSDUR_BA,
            tx_context->pkt_type,
            current_rate);

 vnt_fill_ieee80211_rts(tx_context, &buf->data, buf->duration_aa);

 return vnt_rxtx_datahead_g(tx_context, &buf->data_head);
}
