
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr_entry {int dummy; } ;
struct bm_rcr {int busy; struct bm_rcr_entry* cursor; int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int DPAA_ASSERT (int) ;
 int dpaa_zero (struct bm_rcr_entry*) ;

__attribute__((used)) static inline struct bm_rcr_entry *bm_rcr_start(struct bm_portal *portal)
{
 struct bm_rcr *rcr = &portal->rcr;

 DPAA_ASSERT(!rcr->busy);
 if (!rcr->available)
  return ((void*)0);



 dpaa_zero(rcr->cursor);
 return rcr->cursor;
}
