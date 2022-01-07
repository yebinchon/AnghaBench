
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_request {scalar_t__ timeout; int req_stat; int req_list; } ;
struct esas2r_adapter {int dummy; } ;


 scalar_t__ RQ_MAX_TIMEOUT ;
 int RS_BUSY ;
 int esas2r_trace (char*,struct esas2r_request*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int list_del_init (int *) ;

bool esas2r_ioreq_aborted(struct esas2r_adapter *a, struct esas2r_request *rq,
     u8 status)
{
 esas2r_trace_enter();
 esas2r_trace("rq:%p", rq);
 list_del_init(&rq->req_list);
 if (rq->timeout > RQ_MAX_TIMEOUT) {




  rq->req_stat = RS_BUSY;
  esas2r_trace_exit();
  return 1;
 }

 rq->req_stat = status;
 esas2r_trace_exit();
 return 1;
}
