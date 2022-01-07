
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int dummy; } ;
struct adapter {int dummy; } ;


 int BIT (int) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int REG_LEDCFG2 ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write8 (struct adapter*,int ,int ) ;

void rtl8723b_InitAntenna_Selection(struct adapter *padapter)
{
 struct hal_com_data *pHalData;
 u8 val;


 pHalData = GET_HAL_DATA(padapter);

 val = rtw_read8(padapter, REG_LEDCFG2);

 val |= BIT(7);
 rtw_write8(padapter, REG_LEDCFG2, val);
}
