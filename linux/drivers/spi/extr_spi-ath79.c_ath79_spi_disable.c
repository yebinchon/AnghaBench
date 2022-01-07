
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath79_spi {int reg_ctrl; } ;


 int AR71XX_SPI_REG_CTRL ;
 int AR71XX_SPI_REG_FS ;
 int ath79_spi_wr (struct ath79_spi*,int ,int ) ;

__attribute__((used)) static void ath79_spi_disable(struct ath79_spi *sp)
{

 ath79_spi_wr(sp, AR71XX_SPI_REG_CTRL, sp->reg_ctrl);

 ath79_spi_wr(sp, AR71XX_SPI_REG_FS, 0);
}
