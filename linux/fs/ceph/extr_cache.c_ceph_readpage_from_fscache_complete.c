
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageUptodate (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void ceph_readpage_from_fscache_complete(struct page *page, void *data, int error)
{
 if (!error)
  SetPageUptodate(page);

 unlock_page(page);
}
