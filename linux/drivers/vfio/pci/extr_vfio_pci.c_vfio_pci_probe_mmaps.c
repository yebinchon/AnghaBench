
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; int flags; scalar_t__ end; scalar_t__ start; } ;
struct vfio_pci_dummy_resource {int index; int res_next; TYPE_2__ resource; } ;
struct vfio_pci_device {int* bar_mmap_supported; int dummy_resources_list; TYPE_1__* pdev; } ;
struct resource {int flags; int start; int parent; scalar_t__ end; } ;
struct TYPE_3__ {struct resource* resource; } ;


 int CONFIG_VFIO_PCI_MMAP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int IS_ENABLED (int ) ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PCI_STD_RESOURCES ;
 int PCI_STD_RESOURCE_END ;
 int kfree (struct vfio_pci_dummy_resource*) ;
 struct vfio_pci_dummy_resource* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ request_resource (int ,TYPE_2__*) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static void vfio_pci_probe_mmaps(struct vfio_pci_device *vdev)
{
 struct resource *res;
 int bar;
 struct vfio_pci_dummy_resource *dummy_res;

 INIT_LIST_HEAD(&vdev->dummy_resources_list);

 for (bar = PCI_STD_RESOURCES; bar <= PCI_STD_RESOURCE_END; bar++) {
  res = vdev->pdev->resource + bar;

  if (!IS_ENABLED(CONFIG_VFIO_PCI_MMAP))
   goto no_mmap;

  if (!(res->flags & IORESOURCE_MEM))
   goto no_mmap;






  if (!resource_size(res))
   goto no_mmap;

  if (resource_size(res) >= PAGE_SIZE) {
   vdev->bar_mmap_supported[bar] = 1;
   continue;
  }

  if (!(res->start & ~PAGE_MASK)) {





   dummy_res = kzalloc(sizeof(*dummy_res), GFP_KERNEL);
   if (dummy_res == ((void*)0))
    goto no_mmap;

   dummy_res->resource.name = "vfio sub-page reserved";
   dummy_res->resource.start = res->end + 1;
   dummy_res->resource.end = res->start + PAGE_SIZE - 1;
   dummy_res->resource.flags = res->flags;
   if (request_resource(res->parent,
      &dummy_res->resource)) {
    kfree(dummy_res);
    goto no_mmap;
   }
   dummy_res->index = bar;
   list_add(&dummy_res->res_next,
     &vdev->dummy_resources_list);
   vdev->bar_mmap_supported[bar] = 1;
   continue;
  }
no_mmap:
  vdev->bar_mmap_supported[bar] = 0;
 }
}
