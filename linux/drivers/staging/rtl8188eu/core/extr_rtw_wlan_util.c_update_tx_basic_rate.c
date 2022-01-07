
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int HW_VAR_BASIC_RATE ;
 int IEEE80211_CCK_RATE_1MB ;
 int IEEE80211_OFDM_RATE_6MB ;
 int NDIS_802_11_LENGTH_RATES_EX ;
 int WIRELESS_11B ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 int rtw_basic_rate_cck ;
 int rtw_basic_rate_mix ;
 int rtw_basic_rate_ofdm ;
 int rtw_hal_set_hwreg (struct adapter*,int ,unsigned char*) ;
 int update_mgnt_tx_rate (struct adapter*,int ) ;

void update_tx_basic_rate(struct adapter *padapter, u8 wirelessmode)
{
 unsigned char supported_rates[NDIS_802_11_LENGTH_RATES_EX];

 memset(supported_rates, 0, NDIS_802_11_LENGTH_RATES_EX);

 if ((wirelessmode & WIRELESS_11B) && (wirelessmode == WIRELESS_11B))
  memcpy(supported_rates, rtw_basic_rate_cck, 4);
 else if (wirelessmode & WIRELESS_11B)
  memcpy(supported_rates, rtw_basic_rate_mix, 7);
 else
  memcpy(supported_rates, rtw_basic_rate_ofdm, 3);

 if (wirelessmode & WIRELESS_11B)
  update_mgnt_tx_rate(padapter, IEEE80211_CCK_RATE_1MB);
 else
  update_mgnt_tx_rate(padapter, IEEE80211_OFDM_RATE_6MB);

 rtw_hal_set_hwreg(padapter, HW_VAR_BASIC_RATE, supported_rates);
}
