
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct rtw_coex_info_req {int op_code; int member_0; } ;


 int BT_MP_INFO_OP_SCAN_TYPE ;
 int GET_COEX_RESP_BT_SCAN_TYPE (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int * get_payload_from_coex_resp (struct sk_buff*) ;
 struct sk_buff* rtw_coex_info_request (struct rtw_dev*,struct rtw_coex_info_req*) ;

__attribute__((used)) static bool rtw_coex_get_bt_scan_type(struct rtw_dev *rtwdev, u8 *scan_type)
{
 struct rtw_coex_info_req req = {0};
 struct sk_buff *skb;
 u8 *payload;
 bool ret = 0;

 req.op_code = BT_MP_INFO_OP_SCAN_TYPE;
 skb = rtw_coex_info_request(rtwdev, &req);
 if (!skb)
  goto out;

 payload = get_payload_from_coex_resp(skb);
 *scan_type = GET_COEX_RESP_BT_SCAN_TYPE(payload);
 dev_kfree_skb_any(skb);
 ret = 1;

out:
 return ret;
}
