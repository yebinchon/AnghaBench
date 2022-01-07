
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPagePrivate (struct page*) ;
 int fscrypt_bounce_page_pool ;
 int mempool_free (struct page*,int ) ;
 int set_page_private (struct page*,unsigned long) ;

void fscrypt_free_bounce_page(struct page *bounce_page)
{
 if (!bounce_page)
  return;
 set_page_private(bounce_page, (unsigned long)((void*)0));
 ClearPagePrivate(bounce_page);
 mempool_free(bounce_page, fscrypt_bounce_page_pool);
}
