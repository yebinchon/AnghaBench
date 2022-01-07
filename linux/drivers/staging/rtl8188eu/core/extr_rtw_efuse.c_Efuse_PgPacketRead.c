
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;


 int ALL_WORDS_DISABLED (int) ;
 scalar_t__ AVAILABLE_EFUSE_ADDR (scalar_t__) ;
 int DBG_88E (char*) ;
 int EFUSE_MAX_SECTION_88E ;
 scalar_t__ EXT_HEADER (int) ;
 int Efuse_CalculateWordCnts (int) ;
 int PGPKT_DATA_SIZE ;
 int PG_STATE_DATA ;
 int PG_STATE_HEADER ;
 scalar_t__ efuse_OneByteRead (struct adapter*,scalar_t__,int*) ;
 int efuse_WordEnableDataRead (int,int*,int*) ;
 int memset (int*,int,int) ;

int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
{
 u8 ReadState = PG_STATE_HEADER;
 int bContinual = 1;
 int bDataEmpty = 1;
 u8 efuse_data, word_cnts = 0;
 u16 efuse_addr = 0;
 u8 hoffset = 0, hworden = 0;
 u8 tmpidx = 0;
 u8 tmpdata[8];
 u8 tmp_header = 0;

 if (!data)
  return 0;
 if (offset > EFUSE_MAX_SECTION_88E)
  return 0;

 memset(data, 0xff, sizeof(u8) * PGPKT_DATA_SIZE);
 memset(tmpdata, 0xff, sizeof(u8) * PGPKT_DATA_SIZE);




 while (bContinual && AVAILABLE_EFUSE_ADDR(efuse_addr)) {

  if (ReadState & PG_STATE_HEADER) {
   if (efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data) && (efuse_data != 0xFF)) {
    if (EXT_HEADER(efuse_data)) {
     tmp_header = efuse_data;
     efuse_addr++;
     efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data);
     if (!ALL_WORDS_DISABLED(efuse_data)) {
      hoffset = ((tmp_header & 0xE0) >> 5) | ((efuse_data & 0xF0) >> 1);
      hworden = efuse_data & 0x0F;
     } else {
      DBG_88E("Error, All words disabled\n");
      efuse_addr++;
      continue;
     }
    } else {
     hoffset = (efuse_data >> 4) & 0x0F;
     hworden = efuse_data & 0x0F;
    }
    word_cnts = Efuse_CalculateWordCnts(hworden);
    bDataEmpty = 1;

    if (hoffset == offset) {
     for (tmpidx = 0; tmpidx < word_cnts * 2; tmpidx++) {
      if (efuse_OneByteRead(pAdapter, efuse_addr + 1 + tmpidx, &efuse_data)) {
       tmpdata[tmpidx] = efuse_data;
       if (efuse_data != 0xff)
        bDataEmpty = 0;
      }
     }
     if (!bDataEmpty) {
      ReadState = PG_STATE_DATA;
     } else {
      efuse_addr = efuse_addr + (word_cnts * 2) + 1;
      ReadState = PG_STATE_HEADER;
     }
    } else {
     efuse_addr = efuse_addr + (word_cnts * 2) + 1;
     ReadState = PG_STATE_HEADER;
    }
   } else {
    bContinual = 0;
   }
  } else if (ReadState & PG_STATE_DATA) {

   efuse_WordEnableDataRead(hworden, tmpdata, data);
   efuse_addr = efuse_addr + (word_cnts * 2) + 1;
   ReadState = PG_STATE_HEADER;
  }
 }

 if ((data[0] == 0xff) && (data[1] == 0xff) && (data[2] == 0xff) && (data[3] == 0xff) &&
     (data[4] == 0xff) && (data[5] == 0xff) && (data[6] == 0xff) && (data[7] == 0xff))
  return 0;
 else
  return 1;
}
