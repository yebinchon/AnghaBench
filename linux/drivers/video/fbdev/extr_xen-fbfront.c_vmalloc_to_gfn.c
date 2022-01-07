
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vmalloc_to_page (void*) ;
 unsigned long xen_page_to_gfn (int ) ;

__attribute__((used)) static unsigned long vmalloc_to_gfn(void *address)
{
 return xen_page_to_gfn(vmalloc_to_page(address));
}
