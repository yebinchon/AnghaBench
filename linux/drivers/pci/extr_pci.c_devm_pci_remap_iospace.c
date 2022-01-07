
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_pci_unmap_iospace ;
 int devres_add (struct device*,struct resource const**) ;
 struct resource** devres_alloc (int ,int,int ) ;
 int devres_free (struct resource const**) ;
 int pci_remap_iospace (struct resource const*,int ) ;

int devm_pci_remap_iospace(struct device *dev, const struct resource *res,
      phys_addr_t phys_addr)
{
 const struct resource **ptr;
 int error;

 ptr = devres_alloc(devm_pci_unmap_iospace, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 error = pci_remap_iospace(res, phys_addr);
 if (error) {
  devres_free(ptr);
 } else {
  *ptr = res;
  devres_add(dev, ptr);
 }

 return error;
}
