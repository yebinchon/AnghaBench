
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int req_list; } ;
struct esas2r_adapter {int active_list; } ;


 int esas2r_start_vda_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int list_add_tail (int *,int *) ;

void esas2r_disc_local_start_request(struct esas2r_adapter *a,
         struct esas2r_request *rq)
{
 esas2r_trace_enter();

 list_add_tail(&rq->req_list, &a->active_list);

 esas2r_start_vda_request(a, rq);

 esas2r_trace_exit();

 return;
}
