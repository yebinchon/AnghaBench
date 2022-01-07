
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;
typedef int PGPKT_STRUCT ;


 int EFUSE_BT ;
 int hal_EfuseConstructPGPkt (int ,int ,int *,int *) ;
 int hal_EfusePartialWriteCheck (struct adapter*,int ,int *,int *,int) ;
 int hal_EfusePgCheckAvailableAddr (struct adapter*,int ,int) ;
 int hal_EfusePgPacketWriteData (struct adapter*,int ,int *,int *,int) ;
 int hal_EfusePgPacketWriteHeader (struct adapter*,int ,int *,int *,int) ;

__attribute__((used)) static bool Hal_EfusePgPacketWrite_BT(
 struct adapter *padapter,
 u8 offset,
 u8 word_en,
 u8 *pData,
 bool bPseudoTest
)
{
 PGPKT_STRUCT targetPkt;
 u16 startAddr = 0;
 u8 efuseType = EFUSE_BT;

 if (!hal_EfusePgCheckAvailableAddr(padapter, efuseType, bPseudoTest))
  return 0;

 hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt);

 if (!hal_EfusePartialWriteCheck(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
  return 0;

 if (!hal_EfusePgPacketWriteHeader(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
  return 0;

 if (!hal_EfusePgPacketWriteData(padapter, efuseType, &startAddr, &targetPkt, bPseudoTest))
  return 0;

 return 1;
}
