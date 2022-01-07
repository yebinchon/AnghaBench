
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ category; } ;
struct TYPE_4__ {TYPE_1__ action; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct cw1200_common {int dummy; } ;


 scalar_t__ WLAN_CATEGORY_BACK ;

__attribute__((used)) static int cw1200_handle_action_rx(struct cw1200_common *priv,
       struct sk_buff *skb)
{
 struct ieee80211_mgmt *mgmt = (void *)skb->data;


 if (mgmt->u.action.category == WLAN_CATEGORY_BACK)
  return 1;

 return 0;
}
