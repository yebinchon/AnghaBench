
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_ulong_t ;
typedef int xen_pfn_t ;
struct xen_add_to_physmap_range {unsigned int size; int errs; int idxs; int gpfns; int space; int domid; } ;
struct resource {int start; } ;


 unsigned int DIV_ROUND_UP (int ,int ) ;
 int DOMID_SELF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_memory_op (int ,struct xen_add_to_physmap_range*) ;
 scalar_t__ IORESOURCE_MEM ;
 int XENMAPSPACE_dev_mmio ;
 int XENMEM_add_to_physmap_range ;
 int XEN_PAGE_SIZE ;
 int XEN_PFN_DOWN (int ) ;
 int* kcalloc (unsigned int,int,int ) ;
 int kfree (int*) ;
 int resource_size (struct resource const*) ;
 scalar_t__ resource_type (struct resource const*) ;
 int set_xen_guest_handle (int ,int*) ;
 int xen_unmap_device_mmio (struct resource const*,unsigned int) ;

__attribute__((used)) static int xen_map_device_mmio(const struct resource *resources,
          unsigned int count)
{
 unsigned int i, j, nr;
 int rc = 0;
 const struct resource *r;
 xen_pfn_t *gpfns;
 xen_ulong_t *idxs;
 int *errs;

 for (i = 0; i < count; i++) {
  struct xen_add_to_physmap_range xatp = {
   .domid = DOMID_SELF,
   .space = XENMAPSPACE_dev_mmio
  };

  r = &resources[i];
  nr = DIV_ROUND_UP(resource_size(r), XEN_PAGE_SIZE);
  if ((resource_type(r) != IORESOURCE_MEM) || (nr == 0))
   continue;

  gpfns = kcalloc(nr, sizeof(xen_pfn_t), GFP_KERNEL);
  idxs = kcalloc(nr, sizeof(xen_ulong_t), GFP_KERNEL);
  errs = kcalloc(nr, sizeof(int), GFP_KERNEL);
  if (!gpfns || !idxs || !errs) {
   kfree(gpfns);
   kfree(idxs);
   kfree(errs);
   rc = -ENOMEM;
   goto unmap;
  }

  for (j = 0; j < nr; j++) {





   gpfns[j] = XEN_PFN_DOWN(r->start) + j;
   idxs[j] = XEN_PFN_DOWN(r->start) + j;
  }

  xatp.size = nr;

  set_xen_guest_handle(xatp.gpfns, gpfns);
  set_xen_guest_handle(xatp.idxs, idxs);
  set_xen_guest_handle(xatp.errs, errs);

  rc = HYPERVISOR_memory_op(XENMEM_add_to_physmap_range, &xatp);
  kfree(gpfns);
  kfree(idxs);
  kfree(errs);
  if (rc)
   goto unmap;
 }

 return rc;

unmap:
 xen_unmap_device_mmio(resources, i);
 return rc;
}
