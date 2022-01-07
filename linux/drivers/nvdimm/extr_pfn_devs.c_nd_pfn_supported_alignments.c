
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD ;
 unsigned long HPAGE_PMD_SIZE ;
 unsigned long HPAGE_PUD_SIZE ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long PAGE_SIZE ;
 scalar_t__ has_transparent_hugepage () ;

__attribute__((used)) static unsigned long *nd_pfn_supported_alignments(unsigned long *alignments)
{

 alignments[0] = PAGE_SIZE;

 if (has_transparent_hugepage()) {
  alignments[1] = HPAGE_PMD_SIZE;
  if (IS_ENABLED(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD))
   alignments[2] = HPAGE_PUD_SIZE;
 }

 return alignments;
}
