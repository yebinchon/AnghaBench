
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lp8841_rtc {int iomem; int state; } ;
struct spi_device {int master; } ;


 int SPI_LP8841_RTC_CE ;
 struct spi_lp8841_rtc* spi_master_get_devdata (int ) ;
 int usleep_range (int,int) ;
 int writeb (int ,int ) ;

__attribute__((used)) static void
spi_lp8841_rtc_set_cs(struct spi_device *spi, bool enable)
{
 struct spi_lp8841_rtc *data = spi_master_get_devdata(spi->master);

 data->state = 0;
 writeb(data->state, data->iomem);
 if (enable) {
  usleep_range(4, 5);
  data->state |= SPI_LP8841_RTC_CE;
  writeb(data->state, data->iomem);
  usleep_range(4, 5);
 }
}
