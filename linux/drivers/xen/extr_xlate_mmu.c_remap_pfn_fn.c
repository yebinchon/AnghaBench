
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remap_pfn {size_t i; int mm; int prot; struct page** pages; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int page_to_pfn (struct page*) ;
 int pfn_pte (int ,int ) ;
 int pte_mkspecial (int ) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

__attribute__((used)) static int remap_pfn_fn(pte_t *ptep, unsigned long addr, void *data)
{
 struct remap_pfn *r = data;
 struct page *page = r->pages[r->i];
 pte_t pte = pte_mkspecial(pfn_pte(page_to_pfn(page), r->prot));

 set_pte_at(r->mm, addr, ptep, pte);
 r->i++;

 return 0;
}
