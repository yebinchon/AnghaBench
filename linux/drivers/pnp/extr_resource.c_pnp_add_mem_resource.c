
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; void* end; void* start; } ;
struct pnp_resource {struct resource res; } ;
struct pnp_dev {int dev; } ;
typedef void* resource_size_t ;


 int IORESOURCE_MEM ;
 int KERN_DEBUG ;
 int dev_err (int *,char*,unsigned long long,unsigned long long) ;
 int dev_printk (int ,int *,char*,struct resource*) ;
 struct pnp_resource* pnp_new_resource (struct pnp_dev*) ;

struct pnp_resource *pnp_add_mem_resource(struct pnp_dev *dev,
       resource_size_t start,
       resource_size_t end, int flags)
{
 struct pnp_resource *pnp_res;
 struct resource *res;

 pnp_res = pnp_new_resource(dev);
 if (!pnp_res) {
  dev_err(&dev->dev, "can't add resource for MEM %#llx-%#llx\n",
   (unsigned long long) start,
   (unsigned long long) end);
  return ((void*)0);
 }

 res = &pnp_res->res;
 res->flags = IORESOURCE_MEM | flags;
 res->start = start;
 res->end = end;

 dev_printk(KERN_DEBUG, &dev->dev, "%pR\n", res);
 return pnp_res;
}
