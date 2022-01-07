
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxic_spi {scalar_t__ regs; } ;


 scalar_t__ DATA_STROB ;
 scalar_t__ HC_CFG ;
 int HC_CFG_IDLE_SIO_LVL (int) ;
 int HC_CFG_MAN_CS_EN ;
 int HC_CFG_NIO (int) ;
 int HC_CFG_SLV_ACT (int ) ;
 int HC_CFG_TYPE (int ,int ) ;
 int HC_CFG_TYPE_SPI_NAND ;
 scalar_t__ HC_EN ;
 int INT_STS_ALL ;
 scalar_t__ INT_STS_EN ;
 scalar_t__ LRD_CFG ;
 scalar_t__ LRD_CTRL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxic_spi_hw_init(struct mxic_spi *mxic)
{
 writel(0, mxic->regs + DATA_STROB);
 writel(INT_STS_ALL, mxic->regs + INT_STS_EN);
 writel(0, mxic->regs + HC_EN);
 writel(0, mxic->regs + LRD_CFG);
 writel(0, mxic->regs + LRD_CTRL);
 writel(HC_CFG_NIO(1) | HC_CFG_TYPE(0, HC_CFG_TYPE_SPI_NAND) |
        HC_CFG_SLV_ACT(0) | HC_CFG_MAN_CS_EN | HC_CFG_IDLE_SIO_LVL(1),
        mxic->regs + HC_CFG);
}
