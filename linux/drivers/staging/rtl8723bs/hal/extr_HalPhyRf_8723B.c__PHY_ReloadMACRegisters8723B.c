
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int IQK_MAC_REG_NUM ;
 int rtw_write32 (struct adapter*,int,int) ;
 int rtw_write8 (struct adapter*,int,int ) ;

__attribute__((used)) static void _PHY_ReloadMACRegisters8723B(
 struct adapter *padapter, u32 *MACReg, u32 *MACBackup
)
{
 u32 i;

 for (i = 0 ; i < (IQK_MAC_REG_NUM - 1); i++) {
  rtw_write8(padapter, MACReg[i], (u8)MACBackup[i]);
 }
 rtw_write32(padapter, MACReg[i], MACBackup[i]);
}
