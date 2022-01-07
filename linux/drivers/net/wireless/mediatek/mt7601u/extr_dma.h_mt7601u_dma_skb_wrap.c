
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; } ;
typedef int info ;
typedef enum mt76_msg_port { ____Placeholder_mt76_msg_port } mt76_msg_port ;
typedef enum mt76_info_type { ____Placeholder_mt76_info_type } mt76_info_type ;


 int FIELD_PREP (int ,int) ;
 int MT_TXD_INFO_D_PORT ;
 int MT_TXD_INFO_LEN ;
 int MT_TXD_INFO_TYPE ;
 int put_unaligned_le32 (int,int ) ;
 int round_up (int ,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_put_padto (struct sk_buff*,int) ;

__attribute__((used)) static inline int mt7601u_dma_skb_wrap(struct sk_buff *skb,
           enum mt76_msg_port d_port,
           enum mt76_info_type type, u32 flags)
{
 u32 info;
 info = flags |
  FIELD_PREP(MT_TXD_INFO_LEN, round_up(skb->len, 4)) |
  FIELD_PREP(MT_TXD_INFO_D_PORT, d_port) |
  FIELD_PREP(MT_TXD_INFO_TYPE, type);

 put_unaligned_le32(info, skb_push(skb, sizeof(info)));
 return skb_put_padto(skb, round_up(skb->len, 4) + 4);
}
