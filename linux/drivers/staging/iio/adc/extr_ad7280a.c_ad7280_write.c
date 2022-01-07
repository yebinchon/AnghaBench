
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7280_state {int * buf; int spi; int crc_tab; } ;


 int ad7280_calc_crc8 (int ,unsigned int) ;
 int cpu_to_be32 (unsigned int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad7280_write(struct ad7280_state *st, unsigned int devaddr,
   unsigned int addr, bool all, unsigned int val)
{
 unsigned int reg = devaddr << 27 | addr << 21 |
   (val & 0xFF) << 13 | all << 12;

 reg |= ad7280_calc_crc8(st->crc_tab, reg >> 11) << 3 | 0x2;
 st->buf[0] = cpu_to_be32(reg);

 return spi_write(st->spi, &st->buf[0], 4);
}
