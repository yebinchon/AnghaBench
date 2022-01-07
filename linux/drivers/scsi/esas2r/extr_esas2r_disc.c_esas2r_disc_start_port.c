
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int req_stat; struct esas2r_disc_context* interrupt_cx; } ;
struct esas2r_disc_context {int disc_evt; int state; int flags; } ;
struct esas2r_adapter {scalar_t__ disc_wait_time; int flags; struct esas2r_disc_context disc_ctx; struct esas2r_request general_req; } ;


 int AF_DISC_IN_PROG ;
 int AF_DISC_POLLED ;
 int AF_PORT_CHANGE ;
 int DCDE_DEV_CHANGE ;
 int DCDE_DEV_SCAN ;
 int DCF_DEV_CHANGE ;
 int DCF_DEV_SCAN ;
 int DCF_POLLED ;
 int DCS_BLOCK_DEV_SCAN ;
 int DCS_DEV_RMV ;
 int RS_SUCCESS ;
 int esas2r_disc_continue (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_hdebug (char*) ;
 int esas2r_trace (char*,int) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_disc_start_port(struct esas2r_adapter *a)
{
 struct esas2r_request *rq = &a->general_req;
 struct esas2r_disc_context *dc = &a->disc_ctx;
 bool ret;

 esas2r_trace_enter();

 if (test_bit(AF_DISC_IN_PROG, &a->flags)) {
  esas2r_trace_exit();

  return 0;
 }


 if (dc->disc_evt) {
  if (test_bit(AF_DISC_POLLED, &a->flags)
      && a->disc_wait_time == 0) {






   esas2r_trace_exit();

   return 0;
  }
 } else {


  esas2r_hdebug("disc done");

  set_bit(AF_PORT_CHANGE, &a->flags);

  esas2r_trace_exit();

  return 0;
 }


 esas2r_trace("disc_evt: %d", dc->disc_evt);
 set_bit(AF_DISC_IN_PROG, &a->flags);
 dc->flags = 0;

 if (test_bit(AF_DISC_POLLED, &a->flags))
  dc->flags |= DCF_POLLED;

 rq->interrupt_cx = dc;
 rq->req_stat = RS_SUCCESS;


 if (dc->disc_evt & DCDE_DEV_SCAN) {
  dc->disc_evt &= ~DCDE_DEV_SCAN;

  dc->flags |= DCF_DEV_SCAN;
  dc->state = DCS_BLOCK_DEV_SCAN;
 } else if (dc->disc_evt & DCDE_DEV_CHANGE) {
  dc->disc_evt &= ~DCDE_DEV_CHANGE;

  dc->flags |= DCF_DEV_CHANGE;
  dc->state = DCS_DEV_RMV;
 }


 if (!test_bit(AF_DISC_POLLED, &a->flags))
  ret = esas2r_disc_continue(a, rq);
 else
  ret = 1;

 esas2r_trace_exit();

 return ret;
}
