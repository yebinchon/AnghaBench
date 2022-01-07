
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int bSurpriseRemoved; int EepromAddressSize; } ;
typedef TYPE_1__ _adapter ;


 int EEPROM_READ_OPCODE ;
 int EE_9346CR ;
 int RT_TRACE (int ,int ,char*) ;
 int _EECS ;
 int _EEDI ;
 int _EEDO ;
 int _EEM0 ;
 int _EEM1 ;
 int _EESK ;
 int _drv_err_ ;
 int _func_enter_ ;
 int _func_exit_ ;
 int _module_rtl871x_eeprom_c_ ;
 int eeprom_clean (TYPE_1__*) ;
 int rtw_read8 (TYPE_1__*,int ) ;
 int rtw_write8 (TYPE_1__*,int ,unsigned char) ;
 int shift_in_bits (TYPE_1__*) ;
 int shift_out_bits (TYPE_1__*,int,int) ;

u16 eeprom_read16(_adapter *padapter, u16 reg)
{

 u16 x;
 u16 data = 0;

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

 x &= ~(_EEDI | _EEDO | _EESK | _EEM0);
 x |= _EEM1 | _EECS;
 rtw_write8(padapter, EE_9346CR, (unsigned char)x);



 shift_out_bits(padapter, EEPROM_READ_OPCODE, 3);
 shift_out_bits(padapter, reg, padapter->EepromAddressSize);


 data = shift_in_bits(padapter);

 eeprom_clean(padapter);
out:
_func_exit_;
 return data;


}
