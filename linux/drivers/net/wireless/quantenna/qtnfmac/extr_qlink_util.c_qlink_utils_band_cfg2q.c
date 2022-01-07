
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qlink_band { ____Placeholder_qlink_band } qlink_band ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int EINVAL ;



 int QLINK_BAND_2GHZ ;
 int QLINK_BAND_5GHZ ;
 int QLINK_BAND_60GHZ ;

enum qlink_band qlink_utils_band_cfg2q(enum nl80211_band band)
{
 switch (band) {
 case 130:
  return QLINK_BAND_2GHZ;
 case 129:
  return QLINK_BAND_5GHZ;
 case 128:
  return QLINK_BAND_60GHZ;
 default:
  return -EINVAL;
 }
}
