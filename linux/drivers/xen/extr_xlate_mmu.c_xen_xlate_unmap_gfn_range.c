
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int unmap_gfn ;
 int xen_for_each_gfn (struct page**,int,int ,int *) ;

int xen_xlate_unmap_gfn_range(struct vm_area_struct *vma,
         int nr, struct page **pages)
{
 xen_for_each_gfn(pages, nr, unmap_gfn, ((void*)0));

 return 0;
}
