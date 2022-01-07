
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HPAGE_PMD_SIZE ;
 unsigned long PAGE_SIZE ;
 scalar_t__ has_transparent_hugepage () ;

__attribute__((used)) static unsigned long nd_pfn_default_alignment(void)
{

 if (has_transparent_hugepage())
  return HPAGE_PMD_SIZE;
 return PAGE_SIZE;
}
