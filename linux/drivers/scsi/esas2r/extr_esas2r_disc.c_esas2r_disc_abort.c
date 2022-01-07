
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {scalar_t__ interrupt_cx; } ;
struct esas2r_disc_context {int state; } ;
struct esas2r_adapter {int dummy; } ;


 int DCS_DISC_DONE ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;

__attribute__((used)) static void esas2r_disc_abort(struct esas2r_adapter *a,
         struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;

 esas2r_trace_enter();



 dc->state = DCS_DISC_DONE;

 esas2r_trace_exit();
}
