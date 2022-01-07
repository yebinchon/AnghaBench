
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_WIFI ;
 int hal_ReadEFuse_BT (struct adapter*,int ,int ,scalar_t__*,int) ;
 int hal_ReadEFuse_WiFi (struct adapter*,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static void Hal_ReadEFuse(
 struct adapter *padapter,
 u8 efuseType,
 u16 _offset,
 u16 _size_byte,
 u8 *pbuf,
 bool bPseudoTest
)
{
 if (efuseType == EFUSE_WIFI)
  hal_ReadEFuse_WiFi(padapter, _offset, _size_byte, pbuf, bPseudoTest);
 else
  hal_ReadEFuse_BT(padapter, _offset, _size_byte, pbuf, bPseudoTest);
}
