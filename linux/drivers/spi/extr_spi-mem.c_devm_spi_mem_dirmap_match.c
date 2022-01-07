
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void spi_mem_dirmap_desc ;
struct device {int dummy; } ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_spi_mem_dirmap_match(struct device *dev, void *res, void *data)
{
        struct spi_mem_dirmap_desc **ptr = res;

        if (WARN_ON(!ptr || !*ptr))
                return 0;

 return *ptr == data;
}
