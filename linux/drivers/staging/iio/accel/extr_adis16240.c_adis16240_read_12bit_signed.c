
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int adis16240_spi_read_signed (struct device*,struct device_attribute*,char*,int) ;

__attribute__((used)) static ssize_t adis16240_read_12bit_signed(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 return adis16240_spi_read_signed(dev, attr, buf, 12);
}
