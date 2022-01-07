
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int timeout; struct esas2r_disc_context* interrupt_cx; int comp_cb; } ;
struct esas2r_disc_context {int dummy; } ;
struct esas2r_adapter {int dummy; } ;


 int VDAMGT_DEV_SCAN ;
 int esas2r_build_mgt_req (struct esas2r_adapter*,struct esas2r_request*,int ,int ,int ,int ,int *) ;
 int esas2r_disc_block_dev_scan_cb ;
 int esas2r_disc_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_rq_init_request (struct esas2r_request*,struct esas2r_adapter*) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;

__attribute__((used)) static bool esas2r_disc_block_dev_scan(struct esas2r_adapter *a,
           struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 bool rslt;

 esas2r_trace_enter();

 esas2r_rq_init_request(rq, a);

 esas2r_build_mgt_req(a,
        rq,
        VDAMGT_DEV_SCAN,
        0,
        0,
        0,
        ((void*)0));

 rq->comp_cb = esas2r_disc_block_dev_scan_cb;

 rq->timeout = 30000;
 rq->interrupt_cx = dc;

 rslt = esas2r_disc_start_request(a, rq);

 esas2r_trace_exit();

 return rslt;
}
