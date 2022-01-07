
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem_dirmap_info {int dummy; } ;
struct spi_mem_dirmap_desc {int dummy; } ;
struct spi_mem {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct spi_mem_dirmap_desc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct spi_mem_dirmap_desc*) ;
 int devm_spi_mem_dirmap_release ;
 int devres_add (struct device*,struct spi_mem_dirmap_desc**) ;
 struct spi_mem_dirmap_desc** devres_alloc (int ,int,int ) ;
 int devres_free (struct spi_mem_dirmap_desc**) ;
 struct spi_mem_dirmap_desc* spi_mem_dirmap_create (struct spi_mem*,struct spi_mem_dirmap_info const*) ;

struct spi_mem_dirmap_desc *
devm_spi_mem_dirmap_create(struct device *dev, struct spi_mem *mem,
      const struct spi_mem_dirmap_info *info)
{
 struct spi_mem_dirmap_desc **ptr, *desc;

 ptr = devres_alloc(devm_spi_mem_dirmap_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 desc = spi_mem_dirmap_create(mem, info);
 if (IS_ERR(desc)) {
  devres_free(ptr);
 } else {
  *ptr = desc;
  devres_add(dev, ptr);
 }

 return desc;
}
