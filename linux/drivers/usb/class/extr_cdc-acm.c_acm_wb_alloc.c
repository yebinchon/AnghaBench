
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm_wb {int use; scalar_t__ len; } ;
struct acm {struct acm_wb* wb; } ;


 int ACM_NW ;

__attribute__((used)) static int acm_wb_alloc(struct acm *acm)
{
 int i, wbn;
 struct acm_wb *wb;

 wbn = 0;
 i = 0;
 for (;;) {
  wb = &acm->wb[wbn];
  if (!wb->use) {
   wb->use = 1;
   wb->len = 0;
   return wbn;
  }
  wbn = (wbn + 1) % ACM_NW;
  if (++i >= ACM_NW)
   return -1;
 }
}
