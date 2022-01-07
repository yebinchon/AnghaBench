
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lp8841_rtc {int iomem; } ;


 int SPI_LP8841_RTC_MISO ;
 int ioread8 (int ) ;

__attribute__((used)) static inline int
getmiso(struct spi_lp8841_rtc *data)
{
 return ioread8(data->iomem) & SPI_LP8841_RTC_MISO;
}
