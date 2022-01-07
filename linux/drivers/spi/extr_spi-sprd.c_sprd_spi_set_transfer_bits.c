
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 int SPRD_SPI_CHNL_LEN ;
 int SPRD_SPI_CHNL_LEN_MASK ;
 scalar_t__ SPRD_SPI_CTL0 ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sprd_spi_set_transfer_bits(struct sprd_spi *ss, u32 bits)
{
 u32 val = readl_relaxed(ss->base + SPRD_SPI_CTL0);


 val &= ~(SPRD_SPI_CHNL_LEN_MASK << SPRD_SPI_CHNL_LEN);
 val |= bits << SPRD_SPI_CHNL_LEN;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL0);
}
