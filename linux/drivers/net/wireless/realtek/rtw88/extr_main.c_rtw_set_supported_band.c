
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtw_dev {int dummy; } ;
struct rtw_chip_info {int band; scalar_t__ vht_supported; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int vht_cap; int ht_cap; } ;
struct ieee80211_hw {TYPE_1__* wiphy; struct rtw_dev* priv; } ;
struct TYPE_2__ {struct ieee80211_supported_band** bands; } ;


 int GFP_KERNEL ;
 size_t NL80211_BAND_2GHZ ;
 size_t NL80211_BAND_5GHZ ;
 int RTW_BAND_2G ;
 int RTW_BAND_5G ;
 int kfree (struct ieee80211_supported_band*) ;
 struct ieee80211_supported_band* kmemdup (int *,int,int ) ;
 int rtw_band_2ghz ;
 int rtw_band_5ghz ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_init_ht_cap (struct rtw_dev*,int *) ;
 int rtw_init_vht_cap (struct rtw_dev*,int *) ;

__attribute__((used)) static void rtw_set_supported_band(struct ieee80211_hw *hw,
       struct rtw_chip_info *chip)
{
 struct rtw_dev *rtwdev = hw->priv;
 struct ieee80211_supported_band *sband;

 if (chip->band & RTW_BAND_2G) {
  sband = kmemdup(&rtw_band_2ghz, sizeof(*sband), GFP_KERNEL);
  if (!sband)
   goto err_out;
  if (chip->ht_supported)
   rtw_init_ht_cap(rtwdev, &sband->ht_cap);
  hw->wiphy->bands[NL80211_BAND_2GHZ] = sband;
 }

 if (chip->band & RTW_BAND_5G) {
  sband = kmemdup(&rtw_band_5ghz, sizeof(*sband), GFP_KERNEL);
  if (!sband)
   goto err_out;
  if (chip->ht_supported)
   rtw_init_ht_cap(rtwdev, &sband->ht_cap);
  if (chip->vht_supported)
   rtw_init_vht_cap(rtwdev, &sband->vht_cap);
  hw->wiphy->bands[NL80211_BAND_5GHZ] = sband;
 }

 return;

err_out:
 rtw_err(rtwdev, "failed to set supported band\n");
 kfree(sband);
}
