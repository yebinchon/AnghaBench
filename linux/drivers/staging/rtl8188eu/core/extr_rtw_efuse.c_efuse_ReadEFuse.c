
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int iol_mode_enable (struct adapter*,int) ;
 int iol_read_efuse (struct adapter*,int ,int ,int ,int *) ;
 int rtw_hal_power_on (struct adapter*) ;
 scalar_t__ rtw_iol_applied (struct adapter*) ;

void efuse_ReadEFuse(struct adapter *Adapter, u8 efuseType, u16 _offset, u16 _size_byte, u8 *pbuf)
{
 if (rtw_iol_applied(Adapter)) {
  rtw_hal_power_on(Adapter);
  iol_mode_enable(Adapter, 1);
  iol_read_efuse(Adapter, 0, _offset, _size_byte, pbuf);
  iol_mode_enable(Adapter, 0);
 }
}
