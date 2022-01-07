
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int modalias; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ PAGE_SIZE ;
 char* SPI_MODULE_PREFIX ;
 int acpi_device_modalias (struct device*,char*,scalar_t__) ;
 int sprintf (char*,char*,char*,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t
modalias_show(struct device *dev, struct device_attribute *a, char *buf)
{
 const struct spi_device *spi = to_spi_device(dev);
 int len;

 len = acpi_device_modalias(dev, buf, PAGE_SIZE - 1);
 if (len != -ENODEV)
  return len;

 return sprintf(buf, "%s%s\n", SPI_MODULE_PREFIX, spi->modalias);
}
