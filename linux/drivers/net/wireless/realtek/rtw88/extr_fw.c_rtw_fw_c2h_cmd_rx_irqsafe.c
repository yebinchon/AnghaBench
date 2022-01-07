
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ cb; scalar_t__ len; scalar_t__ data; } ;
struct rtw_dev {int c2h_work; int hw; int c2h_queue; } ;
struct rtw_c2h_cmd {int id; int seq; } ;



 int RTW_DBG_FW ;
 int ieee80211_queue_work (int ,int *) ;
 int rtw_coex_info_response (struct rtw_dev*,struct sk_buff*) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int,int ,scalar_t__) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void rtw_fw_c2h_cmd_rx_irqsafe(struct rtw_dev *rtwdev, u32 pkt_offset,
          struct sk_buff *skb)
{
 struct rtw_c2h_cmd *c2h;
 u8 len;

 c2h = (struct rtw_c2h_cmd *)(skb->data + pkt_offset);
 len = skb->len - pkt_offset - 2;
 *((u32 *)skb->cb) = pkt_offset;

 rtw_dbg(rtwdev, RTW_DBG_FW, "recv C2H, id=0x%02x, seq=0x%02x, len=%d\n",
  c2h->id, c2h->seq, len);

 switch (c2h->id) {
 case 128:
  rtw_coex_info_response(rtwdev, skb);
  break;
 default:

  *((u32 *)skb->cb) = pkt_offset;
  skb_queue_tail(&rtwdev->c2h_queue, skb);
  ieee80211_queue_work(rtwdev->hw, &rtwdev->c2h_work);
  break;
 }
}
