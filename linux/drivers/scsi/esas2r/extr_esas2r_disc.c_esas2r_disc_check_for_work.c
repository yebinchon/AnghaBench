
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {scalar_t__ req_stat; scalar_t__ timeout; int * interrupt_cx; } ;
struct esas2r_adapter {struct esas2r_request general_req; } ;


 scalar_t__ RQ_MAX_TIMEOUT ;
 scalar_t__ RS_PENDING ;
 scalar_t__ RS_STARTED ;
 scalar_t__ RS_TIMEOUT ;
 int esas2r_disc_abort (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_continue (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_start_waiting (struct esas2r_adapter*) ;
 int esas2r_local_reset_adapter (struct esas2r_adapter*) ;
 int esas2r_polled_interrupt (struct esas2r_adapter*) ;
 int esas2r_wait_request (struct esas2r_adapter*,struct esas2r_request*) ;

void esas2r_disc_check_for_work(struct esas2r_adapter *a)
{
 struct esas2r_request *rq = &a->general_req;



 esas2r_polled_interrupt(a);







 esas2r_disc_start_waiting(a);

 if (rq->interrupt_cx == ((void*)0))
  return;

 if (rq->req_stat == RS_STARTED
     && rq->timeout <= RQ_MAX_TIMEOUT) {

  esas2r_wait_request(a, rq);

  if (rq->req_stat == RS_TIMEOUT) {
   esas2r_disc_abort(a, rq);
   esas2r_local_reset_adapter(a);
   return;
  }
 }

 if (rq->req_stat == RS_PENDING
     || rq->req_stat == RS_STARTED)
  return;

 esas2r_disc_continue(a, rq);
}
