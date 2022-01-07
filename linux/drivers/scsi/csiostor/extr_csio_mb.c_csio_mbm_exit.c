
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_mbm {int cbfn_q; int req_q; int * mcurrent; int timer; } ;


 int CSIO_DB_ASSERT (int ) ;
 int del_timer_sync (int *) ;
 int list_empty (int *) ;

void
csio_mbm_exit(struct csio_mbm *mbm)
{
 del_timer_sync(&mbm->timer);

 CSIO_DB_ASSERT(mbm->mcurrent == ((void*)0));
 CSIO_DB_ASSERT(list_empty(&mbm->req_q));
 CSIO_DB_ASSERT(list_empty(&mbm->cbfn_q));
}
