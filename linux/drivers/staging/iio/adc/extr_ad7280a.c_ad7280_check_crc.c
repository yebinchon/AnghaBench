
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7280_state {int crc_tab; } ;


 int EIO ;
 unsigned char ad7280_calc_crc8 (int ,unsigned int) ;

__attribute__((used)) static int ad7280_check_crc(struct ad7280_state *st, unsigned int val)
{
 unsigned char crc = ad7280_calc_crc8(st->crc_tab, val >> 10);

 if (crc != ((val >> 2) & 0xFF))
  return -EIO;

 return 0;
}
