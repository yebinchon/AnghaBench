
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_supp {int idr; int mutex; } ;


 int idr_destroy (int *) ;
 int mutex_destroy (int *) ;

void optee_supp_uninit(struct optee_supp *supp)
{
 mutex_destroy(&supp->mutex);
 idr_destroy(&supp->idr);
}
