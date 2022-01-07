
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct mlme_priv {int dummy; } ;
struct hal_com_data {int RegRRSR; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ DIS_TSF_UDT ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RCR_CBSSID_BCN ;
 int REG_BCN_CTRL ;
 int REG_RCR ;
 int REG_RRSR ;
 int REG_RXFLTMAP2 ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_STATION_STATE ;
 int _FW_LINKED ;
 int check_fwstate (struct mlme_priv*,int) ;
 int rtw_read16 (struct adapter*,int ) ;
 int rtw_read32 (struct adapter*,int ) ;
 scalar_t__ rtw_read8 (struct adapter*,int ) ;
 int rtw_write16 (struct adapter*,int ,int) ;
 int rtw_write32 (struct adapter*,int ,int ) ;
 int rtw_write8 (struct adapter*,int ,scalar_t__) ;

__attribute__((used)) static void hw_var_set_mlme_sitesurvey(struct adapter *padapter, u8 variable, u8 *val)
{
 u32 value_rcr, rcr_clear_bit, reg_bcn_ctl;
 u16 value_rxfltmap2;
 u8 val8;
 struct hal_com_data *pHalData;
 struct mlme_priv *pmlmepriv;


 pHalData = GET_HAL_DATA(padapter);
 pmlmepriv = &padapter->mlmepriv;

 reg_bcn_ctl = REG_BCN_CTRL;

 rcr_clear_bit = RCR_CBSSID_BCN;


 value_rxfltmap2 = 0;

 if ((check_fwstate(pmlmepriv, WIFI_AP_STATE) == 1))
  rcr_clear_bit = RCR_CBSSID_BCN;

 value_rcr = rtw_read32(padapter, REG_RCR);

 if (*((u8 *)val)) {

  value_rcr &= ~(rcr_clear_bit);
  rtw_write32(padapter, REG_RCR, value_rcr);

  rtw_write16(padapter, REG_RXFLTMAP2, value_rxfltmap2);

  if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {

   val8 = rtw_read8(padapter, reg_bcn_ctl);
   val8 |= DIS_TSF_UDT;
   rtw_write8(padapter, reg_bcn_ctl, val8);
  }


  pHalData->RegRRSR = rtw_read16(padapter, REG_RRSR);
 } else {

  if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)))

   rtw_write16(padapter, REG_RXFLTMAP2, 0xFFFF);

  if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE)) {

   val8 = rtw_read8(padapter, reg_bcn_ctl);
   val8 &= ~DIS_TSF_UDT;
   rtw_write8(padapter, reg_bcn_ctl, val8);
  }

  value_rcr |= rcr_clear_bit;
  rtw_write32(padapter, REG_RCR, value_rcr);


  rtw_write16(padapter, REG_RRSR, pHalData->RegRRSR);
 }
}
