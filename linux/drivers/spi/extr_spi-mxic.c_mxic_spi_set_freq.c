
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_spi {unsigned long cur_speed_hz; } ;


 int mxic_spi_clk_disable (struct mxic_spi*) ;
 int mxic_spi_clk_enable (struct mxic_spi*) ;
 int mxic_spi_clk_setup (struct mxic_spi*,unsigned long) ;

__attribute__((used)) static int mxic_spi_set_freq(struct mxic_spi *mxic, unsigned long freq)
{
 int ret;

 if (mxic->cur_speed_hz == freq)
  return 0;

 mxic_spi_clk_disable(mxic);
 ret = mxic_spi_clk_setup(mxic, freq);
 if (ret)
  return ret;

 ret = mxic_spi_clk_enable(mxic);
 if (ret)
  return ret;

 mxic->cur_speed_hz = freq;

 return 0;
}
