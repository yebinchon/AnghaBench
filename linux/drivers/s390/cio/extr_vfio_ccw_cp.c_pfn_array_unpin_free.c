
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfn_array {int pa_iova_pfn; scalar_t__ pa_nr; } ;
struct device {int dummy; } ;


 int kfree (int ) ;
 int vfio_unpin_pages (struct device*,int ,scalar_t__) ;

__attribute__((used)) static void pfn_array_unpin_free(struct pfn_array *pa, struct device *mdev)
{

 if (pa->pa_nr)
  vfio_unpin_pages(mdev, pa->pa_iova_pfn, pa->pa_nr);
 pa->pa_nr = 0;
 kfree(pa->pa_iova_pfn);
}
