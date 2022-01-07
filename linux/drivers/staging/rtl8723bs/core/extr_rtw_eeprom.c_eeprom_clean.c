
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_7__ {int bSurpriseRemoved; } ;
typedef TYPE_1__ _adapter ;


 int EE_9346CR ;
 int RT_TRACE (int ,int ,char*) ;
 int _EECS ;
 int _EEDI ;
 int _drv_err_ ;
 int _func_enter_ ;
 int _func_exit_ ;
 int _module_rtl871x_eeprom_c_ ;
 int down_clk (TYPE_1__*,int*) ;
 int rtw_read8 (TYPE_1__*,int ) ;
 int rtw_write8 (TYPE_1__*,int ,int ) ;
 int up_clk (TYPE_1__*,int*) ;

void eeprom_clean(_adapter *padapter)
{
 u16 x;
_func_enter_;
 if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
 x = rtw_read8(padapter, EE_9346CR);
 if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
 x &= ~(_EECS | _EEDI);
 rtw_write8(padapter, EE_9346CR, (u8)x);
 if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
 up_clk(padapter, &x);
  if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
 down_clk(padapter, &x);
out:
_func_exit_;
}
