
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfn_array {int pa_nr; unsigned long* pa_iova_pfn; } ;


 unsigned long PAGE_SHIFT ;

__attribute__((used)) static bool pfn_array_iova_pinned(struct pfn_array *pa, unsigned long iova)
{
 unsigned long iova_pfn = iova >> PAGE_SHIFT;
 int i;

 for (i = 0; i < pa->pa_nr; i++)
  if (pa->pa_iova_pfn[i] == iova_pfn)
   return 1;

 return 0;
}
