
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct da8xx_rproc {int num_mems; TYPE_1__* mem; } ;
struct TYPE_2__ {int bus_addr; int dev_addr; int cpu_addr; int size; } ;


 int ARRAY_SIZE (char const* const*) ;
 int DA8XX_RPROC_LOCAL_ADDRESS_MASK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*,char const* const,int*,int ,int ,int) ;
 int dev_err (struct device*,char*,char const* const) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 TYPE_1__* devm_kcalloc (struct device*,int,int,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char const* const) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int da8xx_rproc_get_internal_memories(struct platform_device *pdev,
          struct da8xx_rproc *drproc)
{
 static const char * const mem_names[] = {"l2sram", "l1pram", "l1dram"};
 int num_mems = ARRAY_SIZE(mem_names);
 struct device *dev = &pdev->dev;
 struct resource *res;
 int i;

 drproc->mem = devm_kcalloc(dev, num_mems, sizeof(*drproc->mem),
       GFP_KERNEL);
 if (!drproc->mem)
  return -ENOMEM;

 for (i = 0; i < num_mems; i++) {
  res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
         mem_names[i]);
  drproc->mem[i].cpu_addr = devm_ioremap_resource(dev, res);
  if (IS_ERR(drproc->mem[i].cpu_addr)) {
   dev_err(dev, "failed to parse and map %s memory\n",
    mem_names[i]);
   return PTR_ERR(drproc->mem[i].cpu_addr);
  }
  drproc->mem[i].bus_addr = res->start;
  drproc->mem[i].dev_addr =
    res->start & DA8XX_RPROC_LOCAL_ADDRESS_MASK;
  drproc->mem[i].size = resource_size(res);

  dev_dbg(dev, "memory %8s: bus addr %pa size 0x%zx va %p da 0x%x\n",
   mem_names[i], &drproc->mem[i].bus_addr,
   drproc->mem[i].size, drproc->mem[i].cpu_addr,
   drproc->mem[i].dev_addr);
 }
 drproc->num_mems = num_mems;

 return 0;
}
