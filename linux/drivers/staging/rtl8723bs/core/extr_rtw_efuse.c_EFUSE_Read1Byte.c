
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_CTRL ;
 int EFUSE_GetEfuseDefinition (struct adapter*,int ,int ,void*,int) ;
 int EFUSE_WIFI ;
 int TYPE_EFUSE_REAL_CONTENT_LEN ;
 int rtw_read8 (struct adapter*,scalar_t__) ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

u8
EFUSE_Read1Byte(
struct adapter *Adapter,
u16 Address)
{
 u8 Bytetemp = {0x00};
 u8 temp = {0x00};
 u32 k = 0;
 u16 contentLen = 0;

 EFUSE_GetEfuseDefinition(Adapter, EFUSE_WIFI, TYPE_EFUSE_REAL_CONTENT_LEN, (void *)&contentLen, 0);

 if (Address < contentLen) {

  temp = Address & 0xFF;
  rtw_write8(Adapter, EFUSE_CTRL+1, temp);
  Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+2);

  temp = ((Address >> 8) & 0x03) | (Bytetemp & 0xFC);
  rtw_write8(Adapter, EFUSE_CTRL+2, temp);


  Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
  temp = Bytetemp & 0x7F;
  rtw_write8(Adapter, EFUSE_CTRL+3, temp);


  Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
  while (!(Bytetemp & 0x80)) {
   Bytetemp = rtw_read8(Adapter, EFUSE_CTRL+3);
   k++;
   if (k == 1000) {
    k = 0;
    break;
   }
  }
  return rtw_read8(Adapter, EFUSE_CTRL);
 } else
  return 0xFF;

}
