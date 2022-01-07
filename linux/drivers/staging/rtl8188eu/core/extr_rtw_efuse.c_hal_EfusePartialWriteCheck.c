
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct pgpkt {int offset; int word_en; int word_cnts; int data; } ;
struct adapter {int dummy; } ;


 scalar_t__ ALL_WORDS_DISABLED (int) ;
 int EFUSE_OOB_PROTECT_BYTES_88E ;
 int EFUSE_REAL_CONTENT_LEN ;
 int EFUSE_REAL_CONTENT_LEN_88E ;
 scalar_t__ EXT_HEADER (int) ;
 void* Efuse_CalculateWordCnts (int) ;
 scalar_t__ Efuse_PgPacketWrite (struct adapter*,int,int,int ) ;
 int Efuse_WordEnableDataWrite (struct adapter*,int,int,int ) ;
 int HW_VAR_EFUSE_BYTES ;
 scalar_t__ efuse_OneByteRead (struct adapter*,int,int*) ;
 int hal_EfuseCheckIfDatafollowed (struct adapter*,int,int) ;
 int rtw_hal_get_hwreg (struct adapter*,int ,int*) ;
 scalar_t__ wordEnMatched (struct pgpkt*,struct pgpkt*,int*) ;

__attribute__((used)) static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u16 *pAddr, struct pgpkt *pTargetPkt)
{
 bool ret = 0;
 u8 i, efuse_data = 0, cur_header = 0;
 u8 matched_wden = 0, badworden = 0;
 u16 startAddr = 0;
 u16 efuse_max_available_len =
  EFUSE_REAL_CONTENT_LEN_88E - EFUSE_OOB_PROTECT_BYTES_88E;
 struct pgpkt curPkt;

 rtw_hal_get_hwreg(pAdapter, HW_VAR_EFUSE_BYTES, (u8 *)&startAddr);
 startAddr %= EFUSE_REAL_CONTENT_LEN;

 while (1) {
  if (startAddr >= efuse_max_available_len) {
   ret = 0;
   break;
  }

  if (efuse_OneByteRead(pAdapter, startAddr, &efuse_data) && (efuse_data != 0xFF)) {
   if (EXT_HEADER(efuse_data)) {
    cur_header = efuse_data;
    startAddr++;
    efuse_OneByteRead(pAdapter, startAddr, &efuse_data);
    if (ALL_WORDS_DISABLED(efuse_data)) {
     ret = 0;
     break;
    } else {
     curPkt.offset = ((cur_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
     curPkt.word_en = efuse_data & 0x0F;
    }
   } else {
    cur_header = efuse_data;
    curPkt.offset = (cur_header >> 4) & 0x0F;
    curPkt.word_en = cur_header & 0x0F;
   }

   curPkt.word_cnts = Efuse_CalculateWordCnts(curPkt.word_en);


   if ((curPkt.offset == pTargetPkt->offset) &&
       (!hal_EfuseCheckIfDatafollowed(pAdapter, curPkt.word_cnts, startAddr + 1)) &&
       wordEnMatched(pTargetPkt, &curPkt, &matched_wden)) {

    badworden = Efuse_WordEnableDataWrite(pAdapter, startAddr + 1, matched_wden, pTargetPkt->data);
    if (badworden != 0x0F) {
     u32 PgWriteSuccess = 0;


     PgWriteSuccess = Efuse_PgPacketWrite(pAdapter, pTargetPkt->offset, badworden, pTargetPkt->data);

     if (!PgWriteSuccess) {
      ret = 0;
      break;
     }
    }

    for (i = 0; i < 4; i++) {
     if ((matched_wden & (0x1 << i)) == 0)
      pTargetPkt->word_en |= (0x1 << i);
    }
    pTargetPkt->word_cnts = Efuse_CalculateWordCnts(pTargetPkt->word_en);
   }

   startAddr = startAddr + (curPkt.word_cnts * 2) + 1;
  } else {

   *pAddr = startAddr;
   ret = 1;
   break;
  }
 }
 return ret;
}
