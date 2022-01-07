
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;



__attribute__((used)) static int bm_rcr_get_avail(struct bm_portal *portal)
{
 struct bm_rcr *rcr = &portal->rcr;

 return rcr->available;
}
