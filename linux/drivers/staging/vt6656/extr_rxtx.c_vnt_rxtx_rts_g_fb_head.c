
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_usb_send_context {int tx_rate; int pkt_type; struct vnt_private* priv; } ;
struct vnt_rts_g_fb {int data_head; void* duration_aa; int data; void* rts_duration_aa_f1; void* rts_duration_ba_f1; void* rts_duration_aa_f0; void* rts_duration_ba_f0; void* duration_ba; void* duration_bb; int a; int b; } ;
struct vnt_private {int top_cck_basic_rate; int top_ofdm_basic_rate; int tx_rate_fb0; int tx_rate_fb1; } ;


 int PK_TYPE_11B ;
 int RTSDUR_AA ;
 int RTSDUR_AA_F0 ;
 int RTSDUR_AA_F1 ;
 int RTSDUR_BA ;
 int RTSDUR_BA_F0 ;
 int RTSDUR_BA_F1 ;
 int RTSDUR_BB ;
 int vnt_fill_ieee80211_rts (struct vnt_usb_send_context*,int *,void*) ;
 int vnt_get_phy_field (struct vnt_private*,int,int,int ,int *) ;
 void* vnt_get_rtscts_duration_le (struct vnt_usb_send_context*,int ,int ,int) ;
 int vnt_rxtx_datahead_g_fb (struct vnt_usb_send_context*,int *) ;

__attribute__((used)) static u16 vnt_rxtx_rts_g_fb_head(struct vnt_usb_send_context *tx_context,
      struct vnt_rts_g_fb *buf)
{
 struct vnt_private *priv = tx_context->priv;
 u16 current_rate = tx_context->tx_rate;
 u16 rts_frame_len = 20;

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

 buf->rts_duration_ba_f0 =
  vnt_get_rtscts_duration_le(tx_context, RTSDUR_BA_F0,
        tx_context->pkt_type,
        priv->tx_rate_fb0);
 buf->rts_duration_aa_f0 =
  vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA_F0,
        tx_context->pkt_type,
        priv->tx_rate_fb0);
 buf->rts_duration_ba_f1 =
  vnt_get_rtscts_duration_le(tx_context, RTSDUR_BA_F1,
        tx_context->pkt_type,
        priv->tx_rate_fb1);
 buf->rts_duration_aa_f1 =
  vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA_F1,
        tx_context->pkt_type,
        priv->tx_rate_fb1);

 vnt_fill_ieee80211_rts(tx_context, &buf->data, buf->duration_aa);

 return vnt_rxtx_datahead_g_fb(tx_context, &buf->data_head);
}
