
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlme_ext_info {int bcn_interval; int state; } ;
struct mlme_ext_priv {int TSFValue; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int EN_BCN_FUNCTION ;
 int REG_BCN_CTRL ;
 scalar_t__ REG_TSFTR ;
 int ResumeTxBeacon (struct adapter*) ;
 int StopTxBeacon (struct adapter*) ;
 int WIFI_FW_ADHOC_STATE ;
 int WIFI_FW_AP_STATE ;
 int do_div (int,int) ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write32 (struct adapter*,scalar_t__,int) ;
 int rtw_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void hw_var_set_correct_tsf(struct adapter *padapter, u8 variable, u8 *val)
{
 u8 val8;
 u64 tsf;
 struct mlme_ext_priv *pmlmeext;
 struct mlme_ext_info *pmlmeinfo;


 pmlmeext = &padapter->mlmeextpriv;
 pmlmeinfo = &pmlmeext->mlmext_info;

 tsf = pmlmeext->TSFValue-do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024))-1024;

 if (
  ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
  ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
 )
  StopTxBeacon(padapter);

 {

  val8 = rtw_read8(padapter, REG_BCN_CTRL);
  val8 &= ~EN_BCN_FUNCTION;
  rtw_write8(padapter, REG_BCN_CTRL, val8);

  rtw_write32(padapter, REG_TSFTR, tsf);
  rtw_write32(padapter, REG_TSFTR+4, tsf>>32);


  val8 = rtw_read8(padapter, REG_BCN_CTRL);
  val8 |= EN_BCN_FUNCTION;
  rtw_write8(padapter, REG_BCN_CTRL, val8);
 }

 if (
  ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) ||
  ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE)
 )
  ResumeTxBeacon(padapter);
}
