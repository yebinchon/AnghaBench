
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xen_pfn_t ;
struct vm_area_struct {int vm_page_prot; struct page** vm_private_data; } ;
struct page {int dummy; } ;
struct mmap_batch_state {size_t index; int va; int global_error; int domain; struct vm_area_struct* vma; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int PAGE_MASK ;
 int XENFEAT_auto_translated_physmap ;
 int XEN_PAGE_SIZE ;
 int XEN_PFN_PER_PAGE ;
 scalar_t__ xen_feature (int ) ;
 int xen_remap_domain_gfn_array (struct vm_area_struct*,int,int *,int,int*,int ,int ,struct page**) ;

__attribute__((used)) static int mmap_batch_fn(void *data, int nr, void *state)
{
 xen_pfn_t *gfnp = data;
 struct mmap_batch_state *st = state;
 struct vm_area_struct *vma = st->vma;
 struct page **pages = vma->vm_private_data;
 struct page **cur_pages = ((void*)0);
 int ret;

 if (xen_feature(XENFEAT_auto_translated_physmap))
  cur_pages = &pages[st->index];

 BUG_ON(nr < 0);
 ret = xen_remap_domain_gfn_array(st->vma, st->va & PAGE_MASK, gfnp, nr,
      (int *)gfnp, st->vma->vm_page_prot,
      st->domain, cur_pages);


 if (ret != nr) {
  if (ret == -ENOENT)
   st->global_error = -ENOENT;
  else {

   if (st->global_error == 0)
    st->global_error = 1;
  }
 }
 st->va += XEN_PAGE_SIZE * nr;
 st->index += nr / XEN_PFN_PER_PAGE;

 return 0;
}
