
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int dummy; } ;
struct rtw_tx_pkt_info {int dummy; } ;
struct TYPE_2__ {int len; int rp; int wp; } ;
struct rtw_pci_tx_ring {int queue_stopped; TYPE_1__ r; } ;
struct rtw_pci {struct rtw_pci_tx_ring* tx_rings; } ;
struct rtw_dev {int hw; scalar_t__ priv; } ;


 int avail_desc (int ,int ,int ) ;
 int ieee80211_stop_queue (int ,int ) ;
 size_t rtw_hw_queue_mapping (struct sk_buff*) ;
 int rtw_pci_xmit (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*,size_t) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static int rtw_pci_tx(struct rtw_dev *rtwdev,
        struct rtw_tx_pkt_info *pkt_info,
        struct sk_buff *skb)
{
 struct rtw_pci *rtwpci = (struct rtw_pci *)rtwdev->priv;
 struct rtw_pci_tx_ring *ring;
 u8 queue = rtw_hw_queue_mapping(skb);
 int ret;

 ret = rtw_pci_xmit(rtwdev, pkt_info, skb, queue);
 if (ret)
  return ret;

 ring = &rtwpci->tx_rings[queue];
 if (avail_desc(ring->r.wp, ring->r.rp, ring->r.len) < 2) {
  ieee80211_stop_queue(rtwdev->hw, skb_get_queue_mapping(skb));
  ring->queue_stopped = 1;
 }

 return 0;
}
