
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_spi {int send_dly_clk; int send_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void mxic_spi_clk_disable(struct mxic_spi *mxic)
{
 clk_disable_unprepare(mxic->send_clk);
 clk_disable_unprepare(mxic->send_dly_clk);
}
