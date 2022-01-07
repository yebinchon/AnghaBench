
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef enum mcu_cmd { ____Placeholder_mcu_cmd } mcu_cmd ;


 int CPU_TX_PORT ;
 int DMA_COMMAND ;
 int FIELD_PREP (int ,int) ;
 int MT_TXD_CMD_INFO_SEQ ;
 int MT_TXD_CMD_INFO_TYPE ;
 int WARN_ON (int ) ;
 int mt7601u_dma_skb_wrap (struct sk_buff*,int ,int ,int) ;

__attribute__((used)) static inline void mt7601u_dma_skb_wrap_cmd(struct sk_buff *skb,
         u8 seq, enum mcu_cmd cmd)
{
 WARN_ON(mt7601u_dma_skb_wrap(skb, CPU_TX_PORT, DMA_COMMAND,
         FIELD_PREP(MT_TXD_CMD_INFO_SEQ, seq) |
         FIELD_PREP(MT_TXD_CMD_INFO_TYPE, cmd)));
}
