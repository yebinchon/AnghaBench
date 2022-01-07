
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_private {int dummy; } ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;
 scalar_t__ vnt_get_rsvtime (struct vnt_private*,int ,int ,int ,int) ;

__attribute__((used)) static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
        u32 frame_length, u16 rate, int need_ack)
{
 return cpu_to_le16((u16)vnt_get_rsvtime(priv, pkt_type,
  frame_length, rate, need_ack));
}
