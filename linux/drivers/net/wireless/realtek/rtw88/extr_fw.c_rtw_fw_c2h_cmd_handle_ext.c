
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct rtw_c2h_cmd {int* payload; } ;



 struct rtw_c2h_cmd* get_c2h_from_skb (struct sk_buff*) ;
 int rtw_tx_report_handle (struct rtw_dev*,struct sk_buff*) ;

__attribute__((used)) static void rtw_fw_c2h_cmd_handle_ext(struct rtw_dev *rtwdev,
          struct sk_buff *skb)
{
 struct rtw_c2h_cmd *c2h;
 u8 sub_cmd_id;

 c2h = get_c2h_from_skb(skb);
 sub_cmd_id = c2h->payload[0];

 switch (sub_cmd_id) {
 case 128:
  rtw_tx_report_handle(rtwdev, skb);
  break;
 default:
  break;
 }
}
