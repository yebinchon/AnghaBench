
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_mac {int vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_sta* ieee80211_find_sta (int ,int *) ;
 struct rtl_mac* rtl_mac (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static inline struct ieee80211_sta *rtl_find_sta(struct ieee80211_hw *hw,
       u8 *mac_addr)
{
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));

 return ieee80211_find_sta(mac->vif, mac_addr);
}
