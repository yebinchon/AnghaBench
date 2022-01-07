
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_mem {TYPE_1__* spi; } ;
struct nxp_fspi {TYPE_2__* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {int chip_select; struct device dev; int master; } ;


 int ENOMEM ;
 char const* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 char const* dev_name (TYPE_2__*) ;
 char* devm_kasprintf (struct device*,int ,char*,char const*,int ) ;
 int of_get_available_child_count (int ) ;
 struct nxp_fspi* spi_controller_get_devdata (int ) ;

__attribute__((used)) static const char *nxp_fspi_get_name(struct spi_mem *mem)
{
 struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
 struct device *dev = &mem->spi->dev;
 const char *name;


 if (of_get_available_child_count(f->dev->of_node) == 1)
  return dev_name(f->dev);

 name = devm_kasprintf(dev, GFP_KERNEL,
         "%s-%d", dev_name(f->dev),
         mem->spi->chip_select);

 if (!name) {
  dev_err(dev, "failed to get memory for custom flash name\n");
  return ERR_PTR(-ENOMEM);
 }

 return name;
}
