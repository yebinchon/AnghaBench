
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfn_array {int pa_nr; unsigned long* pa_pfn; int pa_iova; } ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static inline void pfn_array_idal_create_words(
 struct pfn_array *pa,
 unsigned long *idaws)
{
 int i;
 for (i = 0; i < pa->pa_nr; i++)
  idaws[i] = pa->pa_pfn[i] << PAGE_SHIFT;


 idaws[0] += pa->pa_iova & (PAGE_SIZE - 1);
}
