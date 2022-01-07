
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_portal {int p; } ;


 int bm_rcr_cce_prefetch (int *) ;
 int bm_rcr_cce_update (int *) ;

__attribute__((used)) static void update_rcr_ci(struct bman_portal *p, int avail)
{
 if (avail)
  bm_rcr_cce_prefetch(&p->p);
 else
  bm_rcr_cce_update(&p->p);
}
