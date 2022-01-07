
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int priority; } ;
typedef int __le16 ;


 int QSLT_BEACON ;
 int QSLT_MGNT ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_ctl (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int rtl_get_fc (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u8 _rtl8723be_map_hwqueue_to_fwqueue(struct sk_buff *skb, u8 hw_queue)
{
 __le16 fc = rtl_get_fc(skb);

 if (unlikely(ieee80211_is_beacon(fc)))
  return QSLT_BEACON;
 if (ieee80211_is_mgmt(fc) || ieee80211_is_ctl(fc))
  return QSLT_MGNT;

 return skb->priority;
}
