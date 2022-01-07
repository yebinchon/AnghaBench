
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct rtw_rsvd_page {scalar_t__ add_txdesc; struct sk_buff* skb; } ;
struct rtw_dev {int dummy; } ;


 int memcpy (int*,int ,int ) ;
 int rtw_fill_rsvd_page_desc (struct rtw_dev*,struct sk_buff*) ;

__attribute__((used)) static void rtw_rsvd_page_list_to_buf(struct rtw_dev *rtwdev, u8 page_size,
          u8 page_margin, u32 page, u8 *buf,
          struct rtw_rsvd_page *rsvd_pkt)
{
 struct sk_buff *skb = rsvd_pkt->skb;

 if (rsvd_pkt->add_txdesc)
  rtw_fill_rsvd_page_desc(rtwdev, skb);

 if (page >= 1)
  memcpy(buf + page_margin + page_size * (page - 1),
         skb->data, skb->len);
 else
  memcpy(buf, skb->data, skb->len);
}
