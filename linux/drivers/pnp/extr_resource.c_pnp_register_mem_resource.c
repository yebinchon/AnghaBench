
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_mem {unsigned char flags; void* size; void* align; void* max; void* min; } ;
struct TYPE_2__ {struct pnp_mem mem; } ;
struct pnp_option {TYPE_1__ u; } ;
struct pnp_dev {int dummy; } ;
typedef void* resource_size_t ;


 int ENOMEM ;
 int IORESOURCE_MEM ;
 int dbg_pnp_show_option (struct pnp_dev*,struct pnp_option*) ;
 struct pnp_option* pnp_build_option (struct pnp_dev*,int ,unsigned int) ;

int pnp_register_mem_resource(struct pnp_dev *dev, unsigned int option_flags,
         resource_size_t min, resource_size_t max,
         resource_size_t align, resource_size_t size,
         unsigned char flags)
{
 struct pnp_option *option;
 struct pnp_mem *mem;

 option = pnp_build_option(dev, IORESOURCE_MEM, option_flags);
 if (!option)
  return -ENOMEM;

 mem = &option->u.mem;
 mem->min = min;
 mem->max = max;
 mem->align = align;
 mem->size = size;
 mem->flags = flags;

 dbg_pnp_show_option(dev, option);
 return 0;
}
