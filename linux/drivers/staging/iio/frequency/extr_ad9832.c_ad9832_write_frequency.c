
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad9832_state {int freq_msg; int spi; void** freq_data; int mclk; } ;


 unsigned int AD9832_CMD_FRE16BITSW ;
 unsigned int AD9832_CMD_FRE8BITSW ;
 unsigned int ADD_SHIFT ;
 unsigned int CMD_SHIFT ;
 int EINVAL ;
 unsigned long ad9832_calc_freqreg (int,unsigned long) ;
 int clk_get_rate (int ) ;
 void* cpu_to_be16 (unsigned int) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad9832_write_frequency(struct ad9832_state *st,
      unsigned int addr, unsigned long fout)
{
 unsigned long regval;

 if (fout > (clk_get_rate(st->mclk) / 2))
  return -EINVAL;

 regval = ad9832_calc_freqreg(clk_get_rate(st->mclk), fout);

 st->freq_data[0] = cpu_to_be16((AD9832_CMD_FRE8BITSW << CMD_SHIFT) |
     (addr << ADD_SHIFT) |
     ((regval >> 24) & 0xFF));
 st->freq_data[1] = cpu_to_be16((AD9832_CMD_FRE16BITSW << CMD_SHIFT) |
     ((addr - 1) << ADD_SHIFT) |
     ((regval >> 16) & 0xFF));
 st->freq_data[2] = cpu_to_be16((AD9832_CMD_FRE8BITSW << CMD_SHIFT) |
     ((addr - 2) << ADD_SHIFT) |
     ((regval >> 8) & 0xFF));
 st->freq_data[3] = cpu_to_be16((AD9832_CMD_FRE16BITSW << CMD_SHIFT) |
     ((addr - 3) << ADD_SHIFT) |
     ((regval >> 0) & 0xFF));

 return spi_sync(st->spi, &st->freq_msg);
}
