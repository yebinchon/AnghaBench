
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; scalar_t__ cb; } ;
struct rtw_dev {int mutex; } ;
struct rtw_c2h_cmd {int id; int payload; } ;





 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_coex_bt_info_notify (struct rtw_dev*,int ,scalar_t__) ;
 int rtw_coex_wl_fwdbginfo_notify (struct rtw_dev*,int ,scalar_t__) ;
 int rtw_fw_c2h_cmd_handle_ext (struct rtw_dev*,struct sk_buff*) ;

void rtw_fw_c2h_cmd_handle(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
 struct rtw_c2h_cmd *c2h;
 u32 pkt_offset;
 u8 len;

 pkt_offset = *((u32 *)skb->cb);
 c2h = (struct rtw_c2h_cmd *)(skb->data + pkt_offset);
 len = skb->len - pkt_offset - 2;

 mutex_lock(&rtwdev->mutex);

 switch (c2h->id) {
 case 130:
  rtw_coex_bt_info_notify(rtwdev, c2h->payload, len);
  break;
 case 128:
  rtw_coex_wl_fwdbginfo_notify(rtwdev, c2h->payload, len);
  break;
 case 129:
  rtw_fw_c2h_cmd_handle_ext(rtwdev, skb);
  break;
 default:
  break;
 }

 mutex_unlock(&rtwdev->mutex);
}
