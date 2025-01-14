
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_CTL8 ;
 scalar_t__ SPRD_SPI_CTL9 ;
 int SPRD_SPI_TX_LEN_H_MASK ;
 int SPRD_SPI_TX_LEN_H_OFFSET ;
 int SPRD_SPI_TX_LEN_L_MASK ;
 int SPRD_SPI_TX_MAX_LEN_MASK ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sprd_spi_set_tx_length(struct sprd_spi *ss, u32 length)
{
 u32 val = readl_relaxed(ss->base + SPRD_SPI_CTL8);

 length &= SPRD_SPI_TX_MAX_LEN_MASK;
 val &= ~SPRD_SPI_TX_LEN_H_MASK;
 val |= length >> SPRD_SPI_TX_LEN_H_OFFSET;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL8);

 val = length & SPRD_SPI_TX_LEN_L_MASK;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL9);
}
