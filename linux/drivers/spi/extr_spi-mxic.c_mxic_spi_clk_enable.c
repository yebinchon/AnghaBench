
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_spi {int send_clk; int send_dly_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int mxic_spi_clk_enable(struct mxic_spi *mxic)
{
 int ret;

 ret = clk_prepare_enable(mxic->send_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(mxic->send_dly_clk);
 if (ret)
  goto err_send_dly_clk;

 return ret;

err_send_dly_clk:
 clk_disable_unprepare(mxic->send_clk);

 return ret;
}
