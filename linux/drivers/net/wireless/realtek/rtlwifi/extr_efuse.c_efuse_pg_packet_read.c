
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ EFUSE_MAX_SIZE ;
 int PGPKT_DATA_SIZE ;
 int PG_STATE_DATA ;
 int PG_STATE_HEADER ;
 scalar_t__ efuse_one_byte_read (struct ieee80211_hw*,scalar_t__,int*) ;
 int efuse_read_data_case1 (struct ieee80211_hw*,scalar_t__*,int,int,int*,int*) ;
 int efuse_word_enable_data_read (int ,int*,int*) ;
 int memset (int*,int,int) ;

__attribute__((used)) static int efuse_pg_packet_read(struct ieee80211_hw *hw, u8 offset, u8 *data)
{
 u8 readstate = PG_STATE_HEADER;

 bool continual = 1;

 u8 efuse_data, word_cnts = 0;
 u16 efuse_addr = 0;
 u8 tmpdata[8];

 if (data == ((void*)0))
  return 0;
 if (offset > 15)
  return 0;

 memset(data, 0xff, PGPKT_DATA_SIZE * sizeof(u8));
 memset(tmpdata, 0xff, PGPKT_DATA_SIZE * sizeof(u8));

 while (continual && (efuse_addr < EFUSE_MAX_SIZE)) {
  if (readstate & PG_STATE_HEADER) {
   if (efuse_one_byte_read(hw, efuse_addr, &efuse_data)
       && (efuse_data != 0xFF))
    efuse_read_data_case1(hw, &efuse_addr,
            efuse_data, offset,
            tmpdata, &readstate);
   else
    continual = 0;
  } else if (readstate & PG_STATE_DATA) {
   efuse_word_enable_data_read(0, tmpdata, data);
   efuse_addr = efuse_addr + (word_cnts * 2) + 1;
   readstate = PG_STATE_HEADER;
  }

 }

 if ((data[0] == 0xff) && (data[1] == 0xff) &&
     (data[2] == 0xff) && (data[3] == 0xff) &&
     (data[4] == 0xff) && (data[5] == 0xff) &&
     (data[6] == 0xff) && (data[7] == 0xff))
  return 0;
 else
  return 1;

}
