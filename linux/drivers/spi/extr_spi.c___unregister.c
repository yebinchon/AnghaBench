
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int spi_unregister_device (int ) ;
 int to_spi_device (struct device*) ;

__attribute__((used)) static int __unregister(struct device *dev, void *null)
{
 spi_unregister_device(to_spi_device(dev));
 return 0;
}
