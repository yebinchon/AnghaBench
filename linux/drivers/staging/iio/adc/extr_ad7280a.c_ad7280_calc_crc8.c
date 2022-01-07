
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned char ad7280_calc_crc8(unsigned char *crc_tab, unsigned int val)
{
 unsigned char crc;

 crc = crc_tab[val >> 16 & 0xFF];
 crc = crc_tab[crc ^ (val >> 8 & 0xFF)];

 return crc ^ (val & 0xFF);
}
