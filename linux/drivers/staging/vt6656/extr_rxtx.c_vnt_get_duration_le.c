
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct vnt_private {scalar_t__ sifs; int top_ofdm_basic_rate; int preamble_type; int top_cck_basic_rate; } ;
typedef int __le16 ;


 scalar_t__ PK_TYPE_11B ;
 int cpu_to_le16 (int ) ;
 scalar_t__ vnt_get_frame_time (int ,scalar_t__,int,int ) ;

__attribute__((used)) static __le16 vnt_get_duration_le(struct vnt_private *priv, u8 pkt_type,
      int need_ack)
{
 u32 ack_time = 0;

 if (need_ack) {
  if (pkt_type == PK_TYPE_11B)
   ack_time = vnt_get_frame_time(priv->preamble_type,
            pkt_type, 14,
            priv->top_cck_basic_rate);
  else
   ack_time = vnt_get_frame_time(priv->preamble_type,
            pkt_type, 14,
            priv->top_ofdm_basic_rate);

  return cpu_to_le16((u16)(priv->sifs + ack_time));
 }

 return 0;
}
