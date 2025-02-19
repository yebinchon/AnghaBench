
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {int src_clk; int hw_speed_hz; scalar_t__ base; } ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ SPRD_SPI_CLKD ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sprd_spi_set_speed(struct sprd_spi *ss, u32 speed_hz)
{




 u32 clk_div = DIV_ROUND_UP(ss->src_clk, speed_hz << 1) - 1;


 ss->hw_speed_hz = (ss->src_clk >> 1) / (clk_div + 1);
 writel_relaxed(clk_div, ss->base + SPRD_SPI_CLKD);
}
