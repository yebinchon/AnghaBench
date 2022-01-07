
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rproc_mem_entry {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; } ;
struct reserved_mem {scalar_t__ base; int size; } ;
struct of_phandle_iterator {TYPE_2__* node; } ;
struct firmware {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_err (struct device*,char*) ;
 int of_phandle_iterator_init (struct of_phandle_iterator*,struct device_node*,char*,int *,int ) ;
 scalar_t__ of_phandle_iterator_next (struct of_phandle_iterator*) ;
 struct reserved_mem* of_reserved_mem_lookup (TYPE_2__*) ;
 int rproc_add_carveout (struct rproc*,struct rproc_mem_entry*) ;
 int rproc_elf_load_rsc_table (struct rproc*,struct firmware const*) ;
 struct rproc_mem_entry* rproc_mem_entry_init (struct device*,int *,int ,int ,scalar_t__,int ,int ,int ) ;
 struct rproc_mem_entry* rproc_of_resm_mem_entry_init (struct device*,int,int ,scalar_t__,int ) ;
 int st_rproc_mem_alloc ;
 int st_rproc_mem_release ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int st_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
{
 struct device *dev = rproc->dev.parent;
 struct device_node *np = dev->of_node;
 struct rproc_mem_entry *mem;
 struct reserved_mem *rmem;
 struct of_phandle_iterator it;
 int index = 0;

 of_phandle_iterator_init(&it, np, "memory-region", ((void*)0), 0);
 while (of_phandle_iterator_next(&it) == 0) {
  rmem = of_reserved_mem_lookup(it.node);
  if (!rmem) {
   dev_err(dev, "unable to acquire memory-region\n");
   return -EINVAL;
  }


  if (strcmp(it.node->name, "vdev0buffer")) {

   mem = rproc_mem_entry_init(dev, ((void*)0),
         (dma_addr_t)rmem->base,
         rmem->size, rmem->base,
         st_rproc_mem_alloc,
         st_rproc_mem_release,
         it.node->name);
  } else {

   mem = rproc_of_resm_mem_entry_init(dev, index,
          rmem->size,
          rmem->base,
          it.node->name);
  }

  if (!mem)
   return -ENOMEM;

  rproc_add_carveout(rproc, mem);
  index++;
 }

 return rproc_elf_load_rsc_table(rproc, fw);
}
