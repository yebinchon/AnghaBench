
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long end; scalar_t__ name; scalar_t__ start; int flags; } ;
struct vme_master_resource {int number; TYPE_1__ bus_resource; int * kern_base; struct vme_bridge* parent; } ;
struct vme_bridge {char* name; int parent; } ;
struct pci_dev {int bus; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IORESOURCE_MEM ;
 int PCIBIOS_MIN_MEM ;
 scalar_t__ VMENAMSIZ ;
 int dev_err (int ,char*,...) ;
 int * ioremap_nocache (scalar_t__,unsigned long long) ;
 int iounmap (int *) ;
 int kfree (scalar_t__) ;
 scalar_t__ kmalloc (scalar_t__,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int pci_bus_alloc_resource (int ,TYPE_1__*,unsigned long long,int,int ,int ,int *,int *) ;
 int release_resource (TYPE_1__*) ;
 int sprintf (char*,char*,char*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int ca91cx42_alloc_resource(struct vme_master_resource *image,
 unsigned long long size)
{
 unsigned long long existing_size;
 int retval = 0;
 struct pci_dev *pdev;
 struct vme_bridge *ca91cx42_bridge;

 ca91cx42_bridge = image->parent;


 if (!ca91cx42_bridge->parent) {
  dev_err(ca91cx42_bridge->parent, "Dev entry NULL\n");
  return -EINVAL;
 }
 pdev = to_pci_dev(ca91cx42_bridge->parent);

 existing_size = (unsigned long long)(image->bus_resource.end -
  image->bus_resource.start);


 if (existing_size == (size - 1))
  return 0;

 if (existing_size != 0) {
  iounmap(image->kern_base);
  image->kern_base = ((void*)0);
  kfree(image->bus_resource.name);
  release_resource(&image->bus_resource);
  memset(&image->bus_resource, 0, sizeof(image->bus_resource));
 }

 if (!image->bus_resource.name) {
  image->bus_resource.name = kmalloc(VMENAMSIZ+3, GFP_ATOMIC);
  if (!image->bus_resource.name) {
   retval = -ENOMEM;
   goto err_name;
  }
 }

 sprintf((char *)image->bus_resource.name, "%s.%d",
  ca91cx42_bridge->name, image->number);

 image->bus_resource.start = 0;
 image->bus_resource.end = (unsigned long)size;
 image->bus_resource.flags = IORESOURCE_MEM;

 retval = pci_bus_alloc_resource(pdev->bus,
  &image->bus_resource, size, 0x10000, PCIBIOS_MIN_MEM,
  0, ((void*)0), ((void*)0));
 if (retval) {
  dev_err(ca91cx42_bridge->parent, "Failed to allocate mem "
   "resource for window %d size 0x%lx start 0x%lx\n",
   image->number, (unsigned long)size,
   (unsigned long)image->bus_resource.start);
  goto err_resource;
 }

 image->kern_base = ioremap_nocache(
  image->bus_resource.start, size);
 if (!image->kern_base) {
  dev_err(ca91cx42_bridge->parent, "Failed to remap resource\n");
  retval = -ENOMEM;
  goto err_remap;
 }

 return 0;

err_remap:
 release_resource(&image->bus_resource);
err_resource:
 kfree(image->bus_resource.name);
 memset(&image->bus_resource, 0, sizeof(image->bus_resource));
err_name:
 return retval;
}
