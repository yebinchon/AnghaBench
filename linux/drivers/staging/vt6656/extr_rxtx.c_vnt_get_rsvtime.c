
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_private {int sifs; scalar_t__ top_ofdm_basic_rate; int preamble_type; scalar_t__ top_cck_basic_rate; } ;


 scalar_t__ PK_TYPE_11B ;
 int vnt_get_frame_time (int ,scalar_t__,int,int ) ;

__attribute__((used)) static u32 vnt_get_rsvtime(struct vnt_private *priv, u8 pkt_type,
      u32 frame_length, u16 rate, int need_ack)
{
 u32 data_time, ack_time;

 data_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           frame_length, rate);

 if (pkt_type == PK_TYPE_11B)
  ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, (u16)priv->top_cck_basic_rate);
 else
  ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
           14, (u16)priv->top_ofdm_basic_rate);

 if (need_ack)
  return data_time + priv->sifs + ack_time;

 return data_time;
}
