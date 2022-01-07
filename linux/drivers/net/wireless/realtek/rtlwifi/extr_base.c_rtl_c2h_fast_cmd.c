
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int data; } ;
struct ieee80211_hw {int dummy; } ;



 int GET_C2H_CMD_ID (int ) ;

__attribute__((used)) static bool rtl_c2h_fast_cmd(struct ieee80211_hw *hw, struct sk_buff *skb)
{
 u8 cmd_id = GET_C2H_CMD_ID(skb->data);

 switch (cmd_id) {
 case 128:
  return 1;
 default:
  break;
 }

 return 0;
}
