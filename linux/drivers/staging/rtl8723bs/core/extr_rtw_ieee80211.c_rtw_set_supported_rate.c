
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;


 int IEEE80211_CCK_RATE_LEN ;
 int IEEE80211_NUM_OFDM_RATESLEN ;
 int NDIS_802_11_LENGTH_RATES_EX ;
 int WIFI_CCKRATES ;
 int WIFI_OFDMRATES ;
 int memcpy (int *,int ,int ) ;
 int memset (int *,int ,int ) ;

void rtw_set_supported_rate(u8 *SupportedRates, uint mode)
{
 memset(SupportedRates, 0, NDIS_802_11_LENGTH_RATES_EX);

 switch (mode) {
 case 135:
  memcpy(SupportedRates, WIFI_CCKRATES, IEEE80211_CCK_RATE_LEN);
  break;

 case 132:
 case 137:
 case 128:
 case 136:
 case 129:
  memcpy(SupportedRates, WIFI_OFDMRATES, IEEE80211_NUM_OFDM_RATESLEN);
  break;

 case 134:
 case 131:
 case 130:
 case 133:
  memcpy(SupportedRates, WIFI_CCKRATES, IEEE80211_CCK_RATE_LEN);
  memcpy(SupportedRates + IEEE80211_CCK_RATE_LEN, WIFI_OFDMRATES, IEEE80211_NUM_OFDM_RATESLEN);
  break;
 }
}
