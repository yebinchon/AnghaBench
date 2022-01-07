
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct pgpkt {int word_cnts; int offset; int word_en; } ;
struct adapter {int dummy; } ;


 scalar_t__ Efuse_GetCurrentSize (struct adapter*) ;
 scalar_t__ Efuse_PgPacketRead (struct adapter*,int ,int*) ;
 scalar_t__ Efuse_PgPacketWrite (struct adapter*,int ,int,int*) ;
 int Efuse_WordEnableDataWrite (struct adapter*,scalar_t__,int ,int*) ;
 int memset (int*,int,int) ;

__attribute__((used)) static bool hal_EfuseFixHeaderProcess(struct adapter *pAdapter, u8 efuseType, struct pgpkt *pFixPkt, u16 *pAddr)
{
 u8 originaldata[8], badworden = 0;
 u16 efuse_addr = *pAddr;
 u32 PgWriteSuccess = 0;

 memset(originaldata, 0xff, 8);

 if (Efuse_PgPacketRead(pAdapter, pFixPkt->offset, originaldata)) {

  badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr + 1, pFixPkt->word_en, originaldata);

  if (badworden != 0xf) {
   PgWriteSuccess = Efuse_PgPacketWrite(pAdapter, pFixPkt->offset, badworden, originaldata);

   if (!PgWriteSuccess)
    return 0;
   else
    efuse_addr = Efuse_GetCurrentSize(pAdapter);
  } else {
   efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
  }
 } else {
  efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
 }
 *pAddr = efuse_addr;
 return 1;
}
