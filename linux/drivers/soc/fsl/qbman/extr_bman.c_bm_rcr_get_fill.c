
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr {int available; } ;
struct bm_portal {struct bm_rcr rcr; } ;


 int BM_RCR_SIZE ;

__attribute__((used)) static int bm_rcr_get_fill(struct bm_portal *portal)
{
 struct bm_rcr *rcr = &portal->rcr;

 return BM_RCR_SIZE - 1 - rcr->available;
}
