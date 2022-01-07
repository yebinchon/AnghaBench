
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pcluster {scalar_t__ compressed_pages; int clusterbits; } ;
struct z_erofs_collector {scalar_t__ compressedpages; struct z_erofs_pcluster* pcl; } ;
struct page {int dummy; } ;


 unsigned int BIT (int ) ;
 int cmpxchg (int ,int *,struct page*) ;

__attribute__((used)) static inline bool z_erofs_try_inplace_io(struct z_erofs_collector *clt,
       struct page *page)
{
 struct z_erofs_pcluster *const pcl = clt->pcl;
 const unsigned int clusterpages = BIT(pcl->clusterbits);

 while (clt->compressedpages < pcl->compressed_pages + clusterpages) {
  if (!cmpxchg(clt->compressedpages++, ((void*)0), page))
   return 1;
 }
 return 0;
}
