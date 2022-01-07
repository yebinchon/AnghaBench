
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_sta_info {int dummy; } ;
struct rtw_dev {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;


 int rtw_update_sta_info (struct rtw_dev*,struct rtw_sta_info*) ;

__attribute__((used)) static void rtw_phy_ra_info_update_iter(void *data, struct ieee80211_sta *sta)
{
 struct rtw_dev *rtwdev = data;
 struct rtw_sta_info *si = (struct rtw_sta_info *)sta->drv_priv;

 rtw_update_sta_info(rtwdev, si);
}
