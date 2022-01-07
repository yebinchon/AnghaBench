
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_usb_send_context {int tx_hdr_size; int frame_len; int need_ack; int pkt_type; int tx_rate; struct vnt_private* priv; } ;
struct vnt_tx_datahead_a_fb {void* duration; int hdr; int time_stamp_off; void* duration_f1; void* duration_f0; int a; } ;
struct vnt_private {int dummy; } ;


 int le16_to_cpu (void*) ;
 void* vnt_get_duration_le (struct vnt_private*,int ,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int ,int ,int ,int *) ;
 int vnt_mac_hdr_pos (struct vnt_usb_send_context*,int *) ;
 int vnt_time_stamp_off (struct vnt_private*,int ) ;

__attribute__((used)) static u16 vnt_rxtx_datahead_a_fb(struct vnt_usb_send_context *tx_context,
      struct vnt_tx_datahead_a_fb *buf)
{
 struct vnt_private *priv = tx_context->priv;
 u16 rate = tx_context->tx_rate;
 u8 pkt_type = tx_context->pkt_type;
 u8 need_ack = tx_context->need_ack;
 u32 frame_len = tx_context->frame_len;


 vnt_get_phy_field(priv, frame_len, rate, pkt_type, &buf->a);

 buf->duration = vnt_get_duration_le(priv, pkt_type, need_ack);

 buf->duration_f0 = vnt_get_duration_le(priv, pkt_type, need_ack);
 buf->duration_f1 = vnt_get_duration_le(priv, pkt_type, need_ack);

 buf->time_stamp_off = vnt_time_stamp_off(priv, rate);

 tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);

 return le16_to_cpu(buf->duration);
}
