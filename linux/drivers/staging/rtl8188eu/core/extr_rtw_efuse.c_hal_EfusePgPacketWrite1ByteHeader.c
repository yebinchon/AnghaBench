
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pgpkt {int offset; int word_en; int word_cnts; } ;
struct adapter {int dummy; } ;


 scalar_t__ EFUSE_REPEAT_THRESHOLD_ ;
 int Efuse_CalculateWordCnts (int) ;
 int efuse_OneByteRead (struct adapter*,int ,int*) ;
 int efuse_OneByteWrite (struct adapter*,int ,int) ;
 int hal_EfuseFixHeaderProcess (struct adapter*,int,struct pgpkt*,int *) ;

__attribute__((used)) static bool hal_EfusePgPacketWrite1ByteHeader(struct adapter *pAdapter, u8 efuseType, u16 *pAddr, struct pgpkt *pTargetPkt)
{
 bool ret = 0;
 u8 pg_header = 0, tmp_header = 0;
 u16 efuse_addr = *pAddr;
 u8 repeatcnt = 0;

 pg_header = ((pTargetPkt->offset << 4) & 0xf0) | pTargetPkt->word_en;

 efuse_OneByteWrite(pAdapter, efuse_addr, pg_header);
 efuse_OneByteRead(pAdapter, efuse_addr, &tmp_header);

 while (tmp_header == 0xFF) {
  if (repeatcnt++ > EFUSE_REPEAT_THRESHOLD_)
   return 0;
  efuse_OneByteWrite(pAdapter, efuse_addr, pg_header);
  efuse_OneByteRead(pAdapter, efuse_addr, &tmp_header);
 }

 if (pg_header == tmp_header) {
  ret = 1;
 } else {
  struct pgpkt fixPkt;

  fixPkt.offset = (tmp_header >> 4) & 0x0F;
  fixPkt.word_en = tmp_header & 0x0F;
  fixPkt.word_cnts = Efuse_CalculateWordCnts(fixPkt.word_en);
  if (!hal_EfuseFixHeaderProcess(pAdapter, efuseType, &fixPkt, &efuse_addr))
   return 0;
 }

 *pAddr = efuse_addr;
 return ret;
}
