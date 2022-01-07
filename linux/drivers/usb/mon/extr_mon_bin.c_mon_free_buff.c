
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_pgmap {scalar_t__ ptr; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void mon_free_buff(struct mon_pgmap *map, int npages)
{
 int n;

 for (n = 0; n < npages; n++)
  free_page((unsigned long) map[n].ptr);
}
