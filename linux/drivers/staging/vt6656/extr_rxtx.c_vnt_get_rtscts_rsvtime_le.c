
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_private {int sifs; int top_ofdm_basic_rate; int preamble_type; int top_cck_basic_rate; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 int vnt_get_frame_time (int ,int,int,int ) ;

__attribute__((used)) static __le16 vnt_get_rtscts_rsvtime_le(struct vnt_private *priv, u8 rsv_type,
     u8 pkt_type, u32 frame_length,
     u16 current_rate)
{
 u32 rrv_time, rts_time, cts_time, ack_time, data_time;

 rrv_time = 0;
 rts_time = 0;
 cts_time = 0;
 ack_time = 0;

 data_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           frame_length, current_rate);

 if (rsv_type == 0) {
  rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           20, priv->top_cck_basic_rate);
  ack_time = vnt_get_frame_time(priv->preamble_type,
           pkt_type, 14,
           priv->top_cck_basic_rate);
  cts_time = ack_time;

 } else if (rsv_type == 1) {
  rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           20, priv->top_cck_basic_rate);
  cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_cck_basic_rate);
  ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_ofdm_basic_rate);
 } else if (rsv_type == 2) {
  rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           20, priv->top_ofdm_basic_rate);
  ack_time = vnt_get_frame_time(priv->preamble_type,
           pkt_type, 14,
           priv->top_ofdm_basic_rate);
  cts_time = ack_time;

 } else if (rsv_type == 3) {
  cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_cck_basic_rate);
  ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, priv->top_ofdm_basic_rate);

  rrv_time = cts_time + ack_time + data_time + 2 * priv->sifs;

  return cpu_to_le16((u16)rrv_time);
 }

 rrv_time = rts_time + cts_time + ack_time + data_time + 3 * priv->sifs;

 return cpu_to_le16((u16)rrv_time);
}
