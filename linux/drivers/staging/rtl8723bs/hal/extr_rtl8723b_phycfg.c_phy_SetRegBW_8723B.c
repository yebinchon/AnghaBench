
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct adapter {int dummy; } ;
typedef enum CHANNEL_WIDTH { ____Placeholder_CHANNEL_WIDTH } CHANNEL_WIDTH ;


 int BIT7 ;
 int BIT8 ;



 int DBG_871X (char*,int) ;
 int REG_TRXPTCL_CTL_8723B ;
 int rtw_read16 (struct adapter*,int ) ;
 int rtw_write16 (struct adapter*,int ,int) ;

__attribute__((used)) static void phy_SetRegBW_8723B(
 struct adapter *Adapter, enum CHANNEL_WIDTH CurrentBW
)
{
 u16 RegRfMod_BW, u2tmp = 0;
 RegRfMod_BW = rtw_read16(Adapter, REG_TRXPTCL_CTL_8723B);

 switch (CurrentBW) {
 case 130:
  rtw_write16(Adapter, REG_TRXPTCL_CTL_8723B, (RegRfMod_BW & 0xFE7F));
  break;

 case 129:
  u2tmp = RegRfMod_BW | BIT7;
  rtw_write16(Adapter, REG_TRXPTCL_CTL_8723B, (u2tmp & 0xFEFF));
  break;

 case 128:
  u2tmp = RegRfMod_BW | BIT8;
  rtw_write16(Adapter, REG_TRXPTCL_CTL_8723B, (u2tmp & 0xFF7F));
  break;

 default:
  DBG_871X("phy_PostSetBWMode8723B():	unknown Bandwidth: %#X\n", CurrentBW);
  break;
 }
}
