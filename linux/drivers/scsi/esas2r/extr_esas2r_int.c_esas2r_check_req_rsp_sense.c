
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ sense_len; } ;
struct TYPE_4__ {TYPE_1__ scsi_rsp; } ;
struct esas2r_request {scalar_t__ sense_len; scalar_t__* sense_buf; scalar_t__ target_id; scalar_t__ data_buf; TYPE_2__ func_rsp; } ;
struct esas2r_adapter {int dummy; } ;


 int TS_LUN_CHANGE ;
 int esas2r_target_state_changed (struct esas2r_adapter*,scalar_t__,int ) ;
 int esas2r_trace (char*,scalar_t__) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int memcpy (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void esas2r_check_req_rsp_sense(struct esas2r_adapter *a,
           struct esas2r_request *rq)
{
 u8 snslen, snslen2;

 snslen = snslen2 = rq->func_rsp.scsi_rsp.sense_len;

 if (snslen > rq->sense_len)
  snslen = rq->sense_len;

 if (snslen) {
  if (rq->sense_buf)
   memcpy(rq->sense_buf, rq->data_buf, snslen);
  else
   rq->sense_buf = (u8 *)rq->data_buf;


  if (snslen2 > 0x0c) {
   u8 *s = (u8 *)rq->data_buf;

   esas2r_trace_enter();


   if (s[0x0c] == 0x3f && s[0x0d] == 0x0E) {
    esas2r_trace("rq->target_id: %d",
          rq->target_id);
    esas2r_target_state_changed(a, rq->target_id,
           TS_LUN_CHANGE);
   }

   esas2r_trace("add_sense_key=%x", s[0x0c]);
   esas2r_trace("add_sense_qual=%x", s[0x0d]);
   esas2r_trace_exit();
  }
 }

 rq->sense_len = snslen;
}
