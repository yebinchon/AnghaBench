
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_spi {int send_dly_clk; int send_clk; } ;


 int clk_set_phase (int ,int) ;
 int clk_set_rate (int ,unsigned long) ;
 int mxic_spi_set_input_delay_dqs (struct mxic_spi*,int) ;

__attribute__((used)) static int mxic_spi_clk_setup(struct mxic_spi *mxic, unsigned long freq)
{
 int ret;

 ret = clk_set_rate(mxic->send_clk, freq);
 if (ret)
  return ret;

 ret = clk_set_rate(mxic->send_dly_clk, freq);
 if (ret)
  return ret;





 mxic_spi_set_input_delay_dqs(mxic, 0xf);
 ret = clk_set_phase(mxic->send_dly_clk, 9 * freq / 25000000);
 if (ret)
  return ret;

 return 0;
}
