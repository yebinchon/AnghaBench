
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct aidaw {int dummy; } ;


 int GFP_ATOMIC ;
 int aidaw_pool ;
 struct page* mempool_alloc (int ,int ) ;
 struct aidaw* page_address (struct page*) ;

__attribute__((used)) static inline struct aidaw *scm_aidaw_alloc(void)
{
 struct page *page = mempool_alloc(aidaw_pool, GFP_ATOMIC);

 return page ? page_address(page) : ((void*)0);
}
