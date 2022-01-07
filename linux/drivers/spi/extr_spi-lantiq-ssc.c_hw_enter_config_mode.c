
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lantiq_ssc_spi {int dummy; } ;


 int LTQ_SPI_WHBSTATE ;
 int LTQ_SPI_WHBSTATE_CLREN ;
 int lantiq_ssc_writel (struct lantiq_ssc_spi const*,int ,int ) ;

__attribute__((used)) static void hw_enter_config_mode(const struct lantiq_ssc_spi *spi)
{
 lantiq_ssc_writel(spi, LTQ_SPI_WHBSTATE_CLREN, LTQ_SPI_WHBSTATE);
}
