
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pcluster {int obj; struct page** compressed_pages; int clusterbits; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;


 unsigned int BIT (int ) ;
 int ClearPagePrivate (struct page*) ;
 int WRITE_ONCE (struct page*,int *) ;
 scalar_t__ erofs_workgroup_try_to_freeze (int *,int) ;
 int erofs_workgroup_unfreeze (int *,int) ;
 scalar_t__ page_private (struct page*) ;
 int put_page (struct page*) ;

int erofs_try_to_free_cached_page(struct address_space *mapping,
      struct page *page)
{
 struct z_erofs_pcluster *const pcl = (void *)page_private(page);
 const unsigned int clusterpages = BIT(pcl->clusterbits);
 int ret = 0;

 if (erofs_workgroup_try_to_freeze(&pcl->obj, 1)) {
  unsigned int i;

  for (i = 0; i < clusterpages; ++i) {
   if (pcl->compressed_pages[i] == page) {
    WRITE_ONCE(pcl->compressed_pages[i], ((void*)0));
    ret = 1;
    break;
   }
  }
  erofs_workgroup_unfreeze(&pcl->obj, 1);

  if (ret) {
   ClearPagePrivate(page);
   put_page(page);
  }
 }
 return ret;
}
