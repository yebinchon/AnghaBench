
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem_dirmap_desc {int dummy; } ;
struct device {int dummy; } ;


 int devm_spi_mem_dirmap_match ;
 int devm_spi_mem_dirmap_release ;
 int devres_release (struct device*,int ,int ,struct spi_mem_dirmap_desc*) ;

void devm_spi_mem_dirmap_destroy(struct device *dev,
     struct spi_mem_dirmap_desc *desc)
{
 devres_release(dev, devm_spi_mem_dirmap_release,
         devm_spi_mem_dirmap_match, desc);
}
