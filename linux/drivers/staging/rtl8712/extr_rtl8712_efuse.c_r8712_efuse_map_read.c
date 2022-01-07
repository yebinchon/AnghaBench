
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct _adapter {int dummy; } ;


 scalar_t__ EFUSE_MAP_MAX_SIZE ;
 int PGPKT_DATA_SIZE ;
 scalar_t__ efuse_is_empty (struct _adapter*,int*) ;
 int r8712_efuse_pg_packet_read (struct _adapter*,int,int*) ;

u8 r8712_efuse_map_read(struct _adapter *adapter, u16 addr, u16 cnts, u8 *data)
{
 u8 offset, ret = 1;
 u8 pktdata[PGPKT_DATA_SIZE];
 int i, idx;

 if ((addr + cnts) > EFUSE_MAP_MAX_SIZE)
  return 0;
 if (efuse_is_empty(adapter, &offset) && offset) {
  for (i = 0; i < cnts; i++)
   data[i] = 0xFF;
  return ret;
 }
 offset = (addr >> 3) & 0xF;
 ret = r8712_efuse_pg_packet_read(adapter, offset, pktdata);
 i = addr & 0x7;
 idx = 0;

 do {
  for (; i < PGPKT_DATA_SIZE; i++) {
   data[idx++] = pktdata[i];
   if (idx == cnts)
    return ret;
  }
  offset++;
  if (!r8712_efuse_pg_packet_read(adapter, offset, pktdata))
   ret = 0;
  i = 0;
 } while (1);
 return ret;
}
