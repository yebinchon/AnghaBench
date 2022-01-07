
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlme_ext_info {int bcn_interval; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {int mlmepriv; struct mlme_ext_priv mlmeextpriv; } ;


 int DIS_BCNQ_SUB ;
 int REG_ATIMWND ;
 int REG_BCN_CTRL ;
 int REG_BCN_INTERVAL ;
 int REG_RXTSF_OFFSET_CCK ;
 int REG_RXTSF_OFFSET_OFDM ;
 int REG_SLOT ;
 int REG_TCR ;
 int ResumeTxBeacon (struct adapter*) ;
 int TSFRST ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int _BeaconFunctionEnable (struct adapter*,int,int) ;
 int check_fwstate (int *,int) ;
 int rtl8723b_InitBeaconParameters (struct adapter*) ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write16 (struct adapter*,int ,int) ;
 int rtw_write32 (struct adapter*,int ,int ) ;
 int rtw_write8 (struct adapter*,int ,int) ;

__attribute__((used)) static void rtl8723b_SetBeaconRelatedRegisters(struct adapter *padapter)
{
 u8 val8;
 u32 value32;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 u32 bcn_ctrl_reg;
 bcn_ctrl_reg = REG_BCN_CTRL;




 rtw_write16(padapter, REG_ATIMWND, 2);




 rtw_write16(padapter, REG_BCN_INTERVAL, pmlmeinfo->bcn_interval);

 rtl8723b_InitBeaconParameters(padapter);

 rtw_write8(padapter, REG_SLOT, 0x09);




 value32 = rtw_read32(padapter, REG_TCR);
 value32 &= ~TSFRST;
 rtw_write32(padapter, REG_TCR, value32);

 value32 |= TSFRST;
 rtw_write32(padapter, REG_TCR, value32);


 if (check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE|WIFI_AP_STATE) == 1) {
  rtw_write8(padapter, REG_RXTSF_OFFSET_CCK, 0x50);
  rtw_write8(padapter, REG_RXTSF_OFFSET_OFDM, 0x50);
 }

 _BeaconFunctionEnable(padapter, 1, 1);

 ResumeTxBeacon(padapter);
 val8 = rtw_read8(padapter, bcn_ctrl_reg);
 val8 |= DIS_BCNQ_SUB;
 rtw_write8(padapter, bcn_ctrl_reg, val8);
}
