
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lantiq_ssc_spi {int bits_per_word; struct lantiq_ssc_hwcfg* hwcfg; } ;
struct lantiq_ssc_hwcfg {int irnen_t; int irnen_r; } ;


 int LTQ_SPI_CLC ;
 int LTQ_SPI_CLC_RMC_S ;
 int LTQ_SPI_CON ;
 int LTQ_SPI_CON_AEN ;
 int LTQ_SPI_CON_REN ;
 int LTQ_SPI_CON_RUEN ;
 int LTQ_SPI_CON_RXOFF ;
 int LTQ_SPI_CON_TEN ;
 int LTQ_SPI_CON_TXOFF ;
 int LTQ_SPI_FPGO ;
 int LTQ_SPI_GPOCON ;
 int LTQ_SPI_IRNEN ;
 int LTQ_SPI_IRNEN_E ;
 int LTQ_SPI_WHBSTATE ;
 int LTQ_SPI_WHBSTATE_CLR_ERRORS ;
 int LTQ_SPI_WHBSTATE_SETMS ;
 int SPI_MODE_0 ;
 int hw_enter_config_mode (struct lantiq_ssc_spi const*) ;
 int hw_setup_bits_per_word (struct lantiq_ssc_spi const*,int ) ;
 int hw_setup_clock_mode (struct lantiq_ssc_spi const*,int ) ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi const*,int ,int,int ) ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi const*,int,int ) ;
 int rx_fifo_reset (struct lantiq_ssc_spi const*) ;
 int tx_fifo_reset (struct lantiq_ssc_spi const*) ;

__attribute__((used)) static void lantiq_ssc_hw_init(const struct lantiq_ssc_spi *spi)
{
 const struct lantiq_ssc_hwcfg *hwcfg = spi->hwcfg;





 lantiq_ssc_writel(spi, 1 << LTQ_SPI_CLC_RMC_S, LTQ_SPI_CLC);


 hw_enter_config_mode(spi);


 lantiq_ssc_maskl(spi, 0, LTQ_SPI_WHBSTATE_CLR_ERRORS, LTQ_SPI_WHBSTATE);


 lantiq_ssc_writel(spi, LTQ_SPI_CON_RUEN | LTQ_SPI_CON_AEN |
  LTQ_SPI_CON_TEN | LTQ_SPI_CON_REN | LTQ_SPI_CON_TXOFF |
  LTQ_SPI_CON_RXOFF, LTQ_SPI_CON);


 hw_setup_bits_per_word(spi, spi->bits_per_word);
 hw_setup_clock_mode(spi, SPI_MODE_0);


 lantiq_ssc_writel(spi, LTQ_SPI_WHBSTATE_SETMS |
          LTQ_SPI_WHBSTATE_CLR_ERRORS,
          LTQ_SPI_WHBSTATE);


 lantiq_ssc_writel(spi, 0, LTQ_SPI_GPOCON);
 lantiq_ssc_writel(spi, 0xFF00, LTQ_SPI_FPGO);


 rx_fifo_reset(spi);
 tx_fifo_reset(spi);


 lantiq_ssc_writel(spi, hwcfg->irnen_t | hwcfg->irnen_r |
     LTQ_SPI_IRNEN_E, LTQ_SPI_IRNEN);
}
