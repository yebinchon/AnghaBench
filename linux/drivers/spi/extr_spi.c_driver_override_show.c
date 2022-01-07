
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {scalar_t__ driver_override; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static ssize_t driver_override_show(struct device *dev,
        struct device_attribute *a, char *buf)
{
 const struct spi_device *spi = to_spi_device(dev);
 ssize_t len;

 device_lock(dev);
 len = snprintf(buf, PAGE_SIZE, "%s\n", spi->driver_override ? : "");
 device_unlock(dev);
 return len;
}
