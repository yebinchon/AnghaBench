
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct rtw_coex_info_req {int para1; int op_code; int member_0; } ;


 int BT_MP_INFO_OP_LNA_CONSTRAINT ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* rtw_coex_info_request (struct rtw_dev*,struct rtw_coex_info_req*) ;

__attribute__((used)) static bool rtw_coex_set_lna_constrain_level(struct rtw_dev *rtwdev,
          u8 lna_constrain_level)
{
 struct rtw_coex_info_req req = {0};
 struct sk_buff *skb;
 bool ret = 0;

 req.op_code = BT_MP_INFO_OP_LNA_CONSTRAINT;
 req.para1 = lna_constrain_level;
 skb = rtw_coex_info_request(rtwdev, &req);
 if (!skb)
  goto out;

 dev_kfree_skb_any(skb);
 ret = 1;

out:
 return ret;
}
