
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u32 ;
struct sk_buff {int dummy; } ;
struct mt7601u_dev {int dummy; } ;


 int CMD_BURST_WRITE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INBAND_PACKET_MAX_LEN ;
 scalar_t__ MT_DMA_HDR_LEN ;
 scalar_t__ const MT_MCU_MEMMAP_WLAN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int min (int const,int) ;
 int mt7601u_mcu_msg_send (struct mt7601u_dev*,struct sk_buff*,int ,int) ;
 int skb_put_le32 (struct sk_buff*,scalar_t__ const) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

int mt7601u_burst_write_regs(struct mt7601u_dev *dev, u32 offset,
        const u32 *data, int n)
{
 const int max_regs_per_cmd = INBAND_PACKET_MAX_LEN / 4 - 1;
 struct sk_buff *skb;
 int cnt, i, ret;

 if (!n)
  return 0;

 cnt = min(max_regs_per_cmd, n);

 skb = alloc_skb(cnt * 4 + MT_DMA_HDR_LEN + 4, GFP_KERNEL);
 if (!skb)
  return -ENOMEM;
 skb_reserve(skb, MT_DMA_HDR_LEN);

 skb_put_le32(skb, MT_MCU_MEMMAP_WLAN + offset);
 for (i = 0; i < cnt; i++)
  skb_put_le32(skb, data[i]);

 ret = mt7601u_mcu_msg_send(dev, skb, CMD_BURST_WRITE, cnt == n);
 if (ret)
  return ret;

 return mt7601u_burst_write_regs(dev, offset + cnt * 4,
     data + cnt, n - cnt);
}
