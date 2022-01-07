
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_usb_send_context {int frame_len; int need_ack; struct vnt_private* priv; } ;
struct vnt_private {int sifs; int top_ofdm_basic_rate; int preamble_type; int top_cck_basic_rate; } ;
typedef int __le16 ;
 int cpu_to_le16 (int ) ;
 int vnt_get_frame_time (int ,int,int,int ) ;
 int vnt_get_rsvtime (struct vnt_private*,int,int,int ,int) ;

__attribute__((used)) static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
      u8 dur_type, u8 pkt_type, u16 rate)
{
 struct vnt_private *priv = context->priv;
 u32 cts_time = 0, dur_time = 0;
 u32 frame_length = context->frame_len;
 u8 need_ack = context->need_ack;

 switch (dur_type) {
 case 128:
 case 131:
 case 130:
 case 129:
  cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_cck_basic_rate);
  dur_time = cts_time + 2 * priv->sifs +
   vnt_get_rsvtime(priv, pkt_type,
     frame_length, rate, need_ack);
  break;

 case 134:
 case 133:
 case 132:
  cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_ofdm_basic_rate);
  dur_time = cts_time + 2 * priv->sifs +
   vnt_get_rsvtime(priv, pkt_type,
     frame_length, rate, need_ack);
  break;

 case 137:
 case 136:
 case 135:
  dur_time = priv->sifs + vnt_get_rsvtime(priv,
    pkt_type, frame_length, rate, need_ack);
  break;

 default:
  break;
 }

 return cpu_to_le16((u16)dur_time);
}
