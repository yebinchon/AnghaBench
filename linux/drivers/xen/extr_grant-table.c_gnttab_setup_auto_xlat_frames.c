
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xen_pfn_t ;
typedef int phys_addr_t ;
typedef int pfn ;
struct TYPE_2__ {int count; scalar_t__* pfn; void* vaddr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int XEN_PAGE_SIZE ;
 scalar_t__ XEN_PFN_DOWN (int ) ;
 unsigned int __max_nr_grant_frames () ;
 scalar_t__* kcalloc (unsigned int,int,int ) ;
 int pr_warn (char*,int *) ;
 TYPE_1__ xen_auto_xlat_grant_frames ;
 void* xen_remap (int ,unsigned int) ;
 int xen_unmap (void*) ;

int gnttab_setup_auto_xlat_frames(phys_addr_t addr)
{
 xen_pfn_t *pfn;
 unsigned int max_nr_gframes = __max_nr_grant_frames();
 unsigned int i;
 void *vaddr;

 if (xen_auto_xlat_grant_frames.count)
  return -EINVAL;

 vaddr = xen_remap(addr, XEN_PAGE_SIZE * max_nr_gframes);
 if (vaddr == ((void*)0)) {
  pr_warn("Failed to ioremap gnttab share frames (addr=%pa)!\n",
   &addr);
  return -ENOMEM;
 }
 pfn = kcalloc(max_nr_gframes, sizeof(pfn[0]), GFP_KERNEL);
 if (!pfn) {
  xen_unmap(vaddr);
  return -ENOMEM;
 }
 for (i = 0; i < max_nr_gframes; i++)
  pfn[i] = XEN_PFN_DOWN(addr) + i;

 xen_auto_xlat_grant_frames.vaddr = vaddr;
 xen_auto_xlat_grant_frames.pfn = pfn;
 xen_auto_xlat_grant_frames.count = max_nr_gframes;

 return 0;
}
