
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct ecryptfs_crypt_stat {int dummy; } ;
typedef int loff_t ;


 int PAGE_SHIFT ;
 int ecryptfs_lower_header_size (struct ecryptfs_crypt_stat*) ;

__attribute__((used)) static loff_t lower_offset_for_page(struct ecryptfs_crypt_stat *crypt_stat,
        struct page *page)
{
 return ecryptfs_lower_header_size(crypt_stat) +
        ((loff_t)page->index << PAGE_SHIFT);
}
