
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_2__ {int bands_cap; } ;
struct qtnf_wmac {TYPE_1__ macinfo; } ;


 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int NL80211_BAND_60GHZ ;
 int QLINK_BAND_2GHZ ;
 int QLINK_BAND_5GHZ ;
 int QLINK_BAND_60GHZ ;
 struct wiphy* priv_to_wiphy (struct qtnf_wmac*) ;
 int qtnf_mac_init_single_band (struct wiphy*,struct qtnf_wmac*,int ) ;

__attribute__((used)) static int qtnf_mac_init_bands(struct qtnf_wmac *mac)
{
 struct wiphy *wiphy = priv_to_wiphy(mac);
 int ret = 0;

 if (mac->macinfo.bands_cap & QLINK_BAND_2GHZ) {
  ret = qtnf_mac_init_single_band(wiphy, mac, NL80211_BAND_2GHZ);
  if (ret)
   goto out;
 }

 if (mac->macinfo.bands_cap & QLINK_BAND_5GHZ) {
  ret = qtnf_mac_init_single_band(wiphy, mac, NL80211_BAND_5GHZ);
  if (ret)
   goto out;
 }

 if (mac->macinfo.bands_cap & QLINK_BAND_60GHZ)
  ret = qtnf_mac_init_single_band(wiphy, mac, NL80211_BAND_60GHZ);

out:
 return ret;
}
