
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_capi_ctr {int ctr; } ;
struct cardstate {struct gigaset_capi_ctr* iif; } ;


 int detach_capi_ctr (int *) ;
 int kfree (struct gigaset_capi_ctr*) ;

void gigaset_isdn_unregdev(struct cardstate *cs)
{
 struct gigaset_capi_ctr *iif = cs->iif;

 detach_capi_ctr(&iif->ctr);
 kfree(iif);
 cs->iif = ((void*)0);
}
