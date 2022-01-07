
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int product; } ;
struct ulpi {TYPE_1__ id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int of_device_modalias (struct device*,char*,int ) ;
 int sprintf (char*,char*,int,int) ;
 struct ulpi* to_ulpi_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 int len;
 struct ulpi *ulpi = to_ulpi_dev(dev);

 len = of_device_modalias(dev, buf, PAGE_SIZE);
 if (len != -ENODEV)
  return len;

 return sprintf(buf, "ulpi:v%04xp%04x\n",
         ulpi->id.vendor, ulpi->id.product);
}
