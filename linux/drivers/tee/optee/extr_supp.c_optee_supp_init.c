
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_supp {int req_id; int reqs; int idr; int reqs_c; int mutex; } ;


 int INIT_LIST_HEAD (int *) ;
 int idr_init (int *) ;
 int init_completion (int *) ;
 int memset (struct optee_supp*,int ,int) ;
 int mutex_init (int *) ;

void optee_supp_init(struct optee_supp *supp)
{
 memset(supp, 0, sizeof(*supp));
 mutex_init(&supp->mutex);
 init_completion(&supp->reqs_c);
 idr_init(&supp->idr);
 INIT_LIST_HEAD(&supp->reqs);
 supp->req_id = -1;
}
