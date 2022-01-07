
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct device {int dummy; } ;


 int spi_unregister_controller (struct spi_controller*) ;

__attribute__((used)) static void devm_spi_unregister(struct device *dev, void *res)
{
 spi_unregister_controller(*(struct spi_controller **)res);
}
