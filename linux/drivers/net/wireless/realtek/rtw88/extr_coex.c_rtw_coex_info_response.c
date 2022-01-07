
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct rtw_coex {int wait; int queue; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 scalar_t__ COEX_RESP_ACK_BY_WL_FW ;
 scalar_t__* get_payload_from_coex_resp (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int wake_up (int *) ;

void rtw_coex_info_response(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
 struct rtw_coex *coex = &rtwdev->coex;
 u8 *payload = get_payload_from_coex_resp(skb);

 if (payload[0] != COEX_RESP_ACK_BY_WL_FW)
  return;

 skb_queue_tail(&coex->queue, skb);
 wake_up(&coex->wait);
}
