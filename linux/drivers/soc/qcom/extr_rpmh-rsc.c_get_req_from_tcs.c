
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_request {int dummy; } ;
struct tcs_group {int mask; int offset; struct tcs_request const** req; } ;
struct rsc_drv {struct tcs_group* tcs; } ;


 int BIT (int) ;
 int TCS_TYPE_NR ;

__attribute__((used)) static const struct tcs_request *get_req_from_tcs(struct rsc_drv *drv,
        int tcs_id)
{
 struct tcs_group *tcs;
 int i;

 for (i = 0; i < TCS_TYPE_NR; i++) {
  tcs = &drv->tcs[i];
  if (tcs->mask & BIT(tcs_id))
   return tcs->req[tcs_id - tcs->offset];
 }

 return ((void*)0);
}
