
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad9832_state {int phase_msg; int spi; void** phase_data; } ;


 unsigned long AD9832_CMD_PHA16BITSW ;
 unsigned long AD9832_CMD_PHA8BITSW ;
 int AD9832_PHASE_BITS ;
 unsigned long ADD_SHIFT ;
 unsigned long BIT (int ) ;
 unsigned long CMD_SHIFT ;
 int EINVAL ;
 void* cpu_to_be16 (unsigned long) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad9832_write_phase(struct ad9832_state *st,
         unsigned long addr, unsigned long phase)
{
 if (phase > BIT(AD9832_PHASE_BITS))
  return -EINVAL;

 st->phase_data[0] = cpu_to_be16((AD9832_CMD_PHA8BITSW << CMD_SHIFT) |
     (addr << ADD_SHIFT) |
     ((phase >> 8) & 0xFF));
 st->phase_data[1] = cpu_to_be16((AD9832_CMD_PHA16BITSW << CMD_SHIFT) |
     ((addr - 1) << ADD_SHIFT) |
     (phase & 0xFF));

 return spi_sync(st->spi, &st->phase_msg);
}
