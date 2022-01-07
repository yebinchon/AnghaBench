
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_page_pool {int order; int gfp_mask; } ;


 struct page* alloc_pages (int ,int ) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;

__attribute__((used)) static inline struct page *ion_page_pool_alloc_pages(struct ion_page_pool *pool)
{
 if (fatal_signal_pending(current))
  return ((void*)0);
 return alloc_pages(pool->gfp_mask, pool->order);
}
