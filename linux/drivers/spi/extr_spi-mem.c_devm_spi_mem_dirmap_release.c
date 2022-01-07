
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem_dirmap_desc {int dummy; } ;
struct device {int dummy; } ;


 int spi_mem_dirmap_destroy (struct spi_mem_dirmap_desc*) ;

__attribute__((used)) static void devm_spi_mem_dirmap_release(struct device *dev, void *res)
{
 struct spi_mem_dirmap_desc *desc = *(struct spi_mem_dirmap_desc **)res;

 spi_mem_dirmap_destroy(desc);
}
