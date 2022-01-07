
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_pend {int * pages; } ;


 unsigned long vaddr_page (int ) ;

__attribute__((used)) static unsigned long vaddr(struct vscsibk_pend *req, int seg)
{
 return vaddr_page(req->pages[seg]);
}
