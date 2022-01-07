
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {unsigned int raw_wq_count; unsigned int rq_count; int * cq; } ;


 int fnic_wq_cmpl_handler_cont ;
 scalar_t__ vnic_cq_service (int *,int,int ,int *) ;

int fnic_wq_cmpl_handler(struct fnic *fnic, int work_to_do)
{
 unsigned int wq_work_done = 0;
 unsigned int i;

 for (i = 0; i < fnic->raw_wq_count; i++) {
  wq_work_done += vnic_cq_service(&fnic->cq[fnic->rq_count+i],
       work_to_do,
       fnic_wq_cmpl_handler_cont,
       ((void*)0));
 }

 return wq_work_done;
}
