
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad9834_state {int freq_msg; int spi; void** freq_data; int mclk; } ;


 int AD9834_FREQ_BITS ;
 int EINVAL ;
 unsigned long RES_MASK (int) ;
 unsigned long ad9834_calc_freqreg (unsigned long,unsigned long) ;
 unsigned long clk_get_rate (int ) ;
 void* cpu_to_be16 (unsigned long) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad9834_write_frequency(struct ad9834_state *st,
      unsigned long addr, unsigned long fout)
{
 unsigned long clk_freq;
 unsigned long regval;

 clk_freq = clk_get_rate(st->mclk);

 if (fout > (clk_freq / 2))
  return -EINVAL;

 regval = ad9834_calc_freqreg(clk_freq, fout);

 st->freq_data[0] = cpu_to_be16(addr | (regval &
           RES_MASK(AD9834_FREQ_BITS / 2)));
 st->freq_data[1] = cpu_to_be16(addr | ((regval >>
           (AD9834_FREQ_BITS / 2)) &
           RES_MASK(AD9834_FREQ_BITS / 2)));

 return spi_sync(st->spi, &st->freq_msg);
}
