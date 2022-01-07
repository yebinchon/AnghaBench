
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int bSurpriseRemoved; } ;
typedef TYPE_1__ _adapter ;


 int EE_9346CR ;
 int RT_TRACE (int ,int ,char*) ;
 int _EEDI ;
 int _EEDO ;
 int _drv_err_ ;
 int _func_enter_ ;
 int _func_exit_ ;
 int _module_rtl871x_eeprom_c_ ;
 int down_clk (TYPE_1__*,int*) ;
 int rtw_read8 (TYPE_1__*,int ) ;
 int up_clk (TYPE_1__*,int*) ;

u16 shift_in_bits(_adapter *padapter)
{
 u16 x, d = 0, i;
_func_enter_;
 if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
 x = rtw_read8(padapter, EE_9346CR);

 x &= ~(_EEDO | _EEDI);
 d = 0;

 for (i = 0; i < 16; i++) {
  d = d << 1;
  up_clk(padapter, &x);
 if (padapter->bSurpriseRemoved == 1) {
  RT_TRACE(_module_rtl871x_eeprom_c_, _drv_err_, ("padapter->bSurpriseRemoved==true"));
  goto out;
 }
  x = rtw_read8(padapter, EE_9346CR);

  x &= ~(_EEDI);
  if (x & _EEDO)
  d |= 1;

  down_clk(padapter, &x);
 }
out:
_func_exit_;

 return d;
}
