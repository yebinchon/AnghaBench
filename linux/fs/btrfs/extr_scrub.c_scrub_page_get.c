
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_page {int refs; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void scrub_page_get(struct scrub_page *spage)
{
 atomic_inc(&spage->refs);
}
