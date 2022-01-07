
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_sta_info {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum wireless_mode { ____Placeholder_wireless_mode } wireless_mode ;



__attribute__((used)) static u8 _rtl8821ae_get_ra_ldpc(struct ieee80211_hw *hw,
        u8 mac_id, struct rtl_sta_info *sta_entry,
        enum wireless_mode wirelessmode)
{
 u8 b_ldpc = 0;

 return b_ldpc << 2;
}
