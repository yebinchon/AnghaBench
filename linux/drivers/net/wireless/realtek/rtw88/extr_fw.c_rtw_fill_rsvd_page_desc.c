
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_tx_pkt_info {int dummy; } ;
typedef struct rtw_tx_pkt_info u8 ;
struct sk_buff {int dummy; } ;
struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int tx_pkt_desc_sz; } ;
typedef int pkt_info ;


 int memset (struct rtw_tx_pkt_info*,int ,int) ;
 int rtw_rsvd_page_pkt_info_update (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*) ;
 int rtw_tx_fill_tx_desc (struct rtw_tx_pkt_info*,struct sk_buff*) ;
 struct rtw_tx_pkt_info* skb_push (struct sk_buff*,int) ;

__attribute__((used)) static void rtw_fill_rsvd_page_desc(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
 struct rtw_tx_pkt_info pkt_info;
 struct rtw_chip_info *chip = rtwdev->chip;
 u8 *pkt_desc;

 memset(&pkt_info, 0, sizeof(pkt_info));
 rtw_rsvd_page_pkt_info_update(rtwdev, &pkt_info, skb);
 pkt_desc = skb_push(skb, chip->tx_pkt_desc_sz);
 memset(pkt_desc, 0, chip->tx_pkt_desc_sz);
 rtw_tx_fill_tx_desc(&pkt_info, skb);
}
