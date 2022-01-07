
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int RTL_TXQ_BCN ;
 int RTL_TXQ_BE ;
 int RTL_TXQ_BK ;
 int RTL_TXQ_MGT ;
 int RTL_TXQ_VI ;
 int RTL_TXQ_VO ;
 int WARN_ONCE (int,char*,int) ;
 int ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 scalar_t__ unlikely (int ) ;

u16 rtl8192cu_mq_to_hwq(__le16 fc, u16 mac80211_queue_index)
{
 u16 hw_queue_index;

 if (unlikely(ieee80211_is_beacon(fc))) {
  hw_queue_index = RTL_TXQ_BCN;
  goto out;
 }
 if (ieee80211_is_mgmt(fc)) {
  hw_queue_index = RTL_TXQ_MGT;
  goto out;
 }
 switch (mac80211_queue_index) {
 case 0:
  hw_queue_index = RTL_TXQ_VO;
  break;
 case 1:
  hw_queue_index = RTL_TXQ_VI;
  break;
 case 2:
  hw_queue_index = RTL_TXQ_BE;
  break;
 case 3:
  hw_queue_index = RTL_TXQ_BK;
  break;
 default:
  hw_queue_index = RTL_TXQ_BE;
  WARN_ONCE(1, "rtl8192cu: QSLT_BE queue, skb_queue:%d\n",
     mac80211_queue_index);
  break;
 }
out:
 return hw_queue_index;
}
