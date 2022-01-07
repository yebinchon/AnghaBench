
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_shm_pool_mgr {int dummy; } ;
struct tee_shm {unsigned int size; int paddr; int kaddr; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int __GFP_ZERO ;
 struct page* alloc_pages (int,unsigned int) ;
 unsigned int get_order (size_t) ;
 int page_address (struct page*) ;
 int page_to_phys (struct page*) ;

__attribute__((used)) static int pool_op_alloc(struct tee_shm_pool_mgr *poolm,
    struct tee_shm *shm, size_t size)
{
 unsigned int order = get_order(size);
 struct page *page;

 page = alloc_pages(GFP_KERNEL | __GFP_ZERO, order);
 if (!page)
  return -ENOMEM;

 shm->kaddr = page_address(page);
 shm->paddr = page_to_phys(page);
 shm->size = PAGE_SIZE << order;

 return 0;
}
