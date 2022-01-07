
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int BIT (int ) ;
 int DIS_TSF_UDT ;
 int REG_BCN_CTRL ;
 int REG_DUAL_TSF_RST ;
 int REG_RXFLTMAP2 ;
 int rtw_read8 (struct adapter*,int ) ;
 int rtw_write16 (struct adapter*,int ,int ) ;
 int rtw_write8 (struct adapter*,int ,int ) ;

__attribute__((used)) static void hw_var_set_mlme_disconnect(struct adapter *padapter, u8 variable, u8 *val)
{
 u8 val8;




 rtw_write16(padapter, REG_RXFLTMAP2, 0);


 rtw_write8(padapter, REG_DUAL_TSF_RST, BIT(0));


 val8 = rtw_read8(padapter, REG_BCN_CTRL);
 val8 |= DIS_TSF_UDT;
 rtw_write8(padapter, REG_BCN_CTRL, val8);
}
