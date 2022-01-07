
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_spi {scalar_t__ regs; } ;


 scalar_t__ ROCKCHIP_SPI_SSIENR ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
{
 writel_relaxed((enable ? 1U : 0U), rs->regs + ROCKCHIP_SPI_SSIENR);
}
