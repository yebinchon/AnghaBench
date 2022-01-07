
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_capi_ctr {int ctr; } ;
struct cardstate {struct gigaset_capi_ctr* iif; } ;


 int capi_ctr_down (int *) ;

void gigaset_isdn_stop(struct cardstate *cs)
{
 struct gigaset_capi_ctr *iif = cs->iif;
 capi_ctr_down(&iif->ctr);
}
