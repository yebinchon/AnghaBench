
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int ssb_crc8 (int,int const) ;

__attribute__((used)) static u8 ssb_sprom_crc(const u16 *sprom, u16 size)
{
 int word;
 u8 crc = 0xFF;

 for (word = 0; word < size - 1; word++) {
  crc = ssb_crc8(crc, sprom[word] & 0x00FF);
  crc = ssb_crc8(crc, (sprom[word] & 0xFF00) >> 8);
 }
 crc = ssb_crc8(crc, sprom[size - 1] & 0x00FF);
 crc ^= 0xFF;

 return crc;
}
