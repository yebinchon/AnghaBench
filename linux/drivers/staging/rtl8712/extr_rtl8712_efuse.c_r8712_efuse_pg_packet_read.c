
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;


 int PGPKT_DATA_SIZE ;
 int calculate_word_cnts (int) ;
 scalar_t__ efuse_available_max_size ;
 scalar_t__ efuse_one_byte_read (struct _adapter*,scalar_t__,int*) ;
 int memset (int*,int,int) ;
 int pgpacket_copy_data (int,int*,int*) ;

u8 r8712_efuse_pg_packet_read(struct _adapter *adapter, u8 offset, u8 *data)
{
 u8 hoffset = 0, hworden = 0, word_cnts = 0;
 u16 efuse_addr = 0;
 u8 efuse_data;
 u8 tmpidx = 0;
 u8 tmpdata[PGPKT_DATA_SIZE];
 u8 ret = 1;

 if (!data)
  return 0;
 if (offset > 0x0f)
  return 0;
 memset(data, 0xFF, sizeof(u8) * PGPKT_DATA_SIZE);
 while (efuse_addr < efuse_available_max_size) {
  if (efuse_one_byte_read(adapter, efuse_addr, &efuse_data)) {
   if (efuse_data == 0xFF)
    break;
   hoffset = (efuse_data >> 4) & 0x0F;
   hworden = efuse_data & 0x0F;
   word_cnts = calculate_word_cnts(hworden);
   if (hoffset == offset) {
    memset(tmpdata, 0xFF, PGPKT_DATA_SIZE);
    for (tmpidx = 0; tmpidx < word_cnts * 2;
         tmpidx++) {
     if (efuse_one_byte_read(adapter,
         efuse_addr + 1 + tmpidx,
         &efuse_data)) {
      tmpdata[tmpidx] = efuse_data;
     } else {
      ret = 0;
     }
    }
    pgpacket_copy_data(hworden, tmpdata, data);
   }
   efuse_addr += 1 + (word_cnts * 2);
  } else {
   ret = 0;
   break;
  }
 }
 return ret;
}
