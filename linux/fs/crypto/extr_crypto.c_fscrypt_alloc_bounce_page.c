
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int fscrypt_bounce_page_pool ;
 struct page* mempool_alloc (int ,int ) ;

struct page *fscrypt_alloc_bounce_page(gfp_t gfp_flags)
{
 return mempool_alloc(fscrypt_bounce_page_pool, gfp_flags);
}
