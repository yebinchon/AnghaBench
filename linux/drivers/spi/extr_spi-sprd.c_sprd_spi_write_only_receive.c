
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {scalar_t__ base; } ;


 scalar_t__ SPRD_SPI_CTL4 ;
 int SPRD_SPI_ONLY_RECV_MASK ;
 int SPRD_SPI_START_RX ;
 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int sprd_spi_write_only_receive(struct sprd_spi *ss, u32 len)
{
 u32 val;


 val = readl_relaxed(ss->base + SPRD_SPI_CTL4);
 val &= ~(SPRD_SPI_START_RX | SPRD_SPI_ONLY_RECV_MASK);
 writel_relaxed(val, ss->base + SPRD_SPI_CTL4);


 val = readl_relaxed(ss->base + SPRD_SPI_CTL4);
 val |= len & SPRD_SPI_ONLY_RECV_MASK;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL4);


 val = readl_relaxed(ss->base + SPRD_SPI_CTL4);
 val |= SPRD_SPI_START_RX;
 writel_relaxed(val, ss->base + SPRD_SPI_CTL4);

 return len;
}
