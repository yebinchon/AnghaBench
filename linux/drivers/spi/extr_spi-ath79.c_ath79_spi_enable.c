
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath79_spi {int ioc_base; void* reg_ctrl; } ;


 int AR71XX_SPI_FS_GPIO ;
 int AR71XX_SPI_IOC_CLK ;
 int AR71XX_SPI_IOC_DO ;
 int AR71XX_SPI_REG_CTRL ;
 int AR71XX_SPI_REG_FS ;
 int AR71XX_SPI_REG_IOC ;
 void* ath79_spi_rr (struct ath79_spi*,int ) ;
 int ath79_spi_wr (struct ath79_spi*,int ,int) ;

__attribute__((used)) static void ath79_spi_enable(struct ath79_spi *sp)
{

 ath79_spi_wr(sp, AR71XX_SPI_REG_FS, AR71XX_SPI_FS_GPIO);


 sp->reg_ctrl = ath79_spi_rr(sp, AR71XX_SPI_REG_CTRL);
 sp->ioc_base = ath79_spi_rr(sp, AR71XX_SPI_REG_IOC);


 sp->ioc_base &= ~(AR71XX_SPI_IOC_DO | AR71XX_SPI_IOC_CLK);


 ath79_spi_wr(sp, AR71XX_SPI_REG_CTRL, 0x43);
}
