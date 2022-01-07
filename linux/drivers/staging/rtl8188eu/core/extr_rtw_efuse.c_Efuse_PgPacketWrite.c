
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pgpkt {int dummy; } ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_MAP_LEN_88E ;
 int EFUSE_WIFI ;
 scalar_t__ Efuse_GetCurrentSize (struct adapter*) ;
 int hal_EfuseConstructPGPkt (int ,int ,int *,struct pgpkt*) ;
 int hal_EfusePartialWriteCheck (struct adapter*,int ,int *,struct pgpkt*) ;
 int hal_EfusePgPacketWriteData (struct adapter*,int ,int *,struct pgpkt*) ;
 int hal_EfusePgPacketWriteHeader (struct adapter*,int ,int *,struct pgpkt*) ;

bool Efuse_PgPacketWrite(struct adapter *pAdapter, u8 offset, u8 word_en, u8 *pData)
{
 struct pgpkt targetPkt;
 u16 startAddr = 0;
 u8 efuseType = EFUSE_WIFI;

 if (Efuse_GetCurrentSize(pAdapter) >= EFUSE_MAP_LEN_88E)
  return 0;

 hal_EfuseConstructPGPkt(offset, word_en, pData, &targetPkt);

 if (!hal_EfusePartialWriteCheck(pAdapter, efuseType, &startAddr, &targetPkt))
  return 0;

 if (!hal_EfusePgPacketWriteHeader(pAdapter, efuseType, &startAddr, &targetPkt))
  return 0;

 if (!hal_EfusePgPacketWriteData(pAdapter, efuseType, &startAddr, &targetPkt))
  return 0;

 return 1;
}
