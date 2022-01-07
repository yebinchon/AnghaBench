
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lp8841_rtc {int iomem; int state; } ;


 int SPI_LP8841_RTC_MOSI ;
 int writeb (int ,int ) ;

__attribute__((used)) static inline void
setmosi(struct spi_lp8841_rtc *data, int is_on)
{
 if (is_on)
  data->state |= SPI_LP8841_RTC_MOSI;
 else
  data->state &= ~SPI_LP8841_RTC_MOSI;
 writeb(data->state, data->iomem);
}
