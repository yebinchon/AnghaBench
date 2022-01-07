
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct rtw_tx_pkt_info {scalar_t__ tx_pkt_size; } ;
struct rtw_dev {TYPE_1__* chip; } ;
typedef int pkt_info ;
struct TYPE_2__ {scalar_t__ tx_pkt_desc_sz; } ;


 int ENOMEM ;
 int RTW_TX_QUEUE_H2C ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int memcpy (int *,int *,scalar_t__) ;
 int memset (struct rtw_tx_pkt_info*,int ,int) ;
 int rtw_pci_xmit (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*,int ) ;
 scalar_t__ skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int rtw_pci_write_data_h2c(struct rtw_dev *rtwdev, u8 *buf, u32 size)
{
 struct sk_buff *skb;
 struct rtw_tx_pkt_info pkt_info;
 u32 tx_pkt_desc_sz;
 u32 length;

 tx_pkt_desc_sz = rtwdev->chip->tx_pkt_desc_sz;
 length = size + tx_pkt_desc_sz;
 skb = dev_alloc_skb(length);
 if (!skb)
  return -ENOMEM;

 skb_reserve(skb, tx_pkt_desc_sz);
 memcpy((u8 *)skb_put(skb, size), buf, size);
 memset(&pkt_info, 0, sizeof(pkt_info));
 pkt_info.tx_pkt_size = size;

 return rtw_pci_xmit(rtwdev, &pkt_info, skb, RTW_TX_QUEUE_H2C);
}
