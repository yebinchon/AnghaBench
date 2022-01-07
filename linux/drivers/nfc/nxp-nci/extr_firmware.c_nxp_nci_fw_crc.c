
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 nxp_nci_fw_crc(u8 const *buffer, size_t len)
{
 u16 crc = 0xffff;

 while (len--) {
  crc = ((crc >> 8) | (crc << 8)) ^ *buffer++;
  crc ^= (crc & 0xff) >> 4;
  crc ^= (crc & 0xff) << 12;
  crc ^= (crc & 0xff) << 5;
 }

 return crc;
}
