
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct esas2r_request {scalar_t__ req_stat; int (* interrupt_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;scalar_t__ interrupt_cx; TYPE_2__* vrq; } ;
struct TYPE_3__ {int * cur_offset; } ;
struct esas2r_flash_context {int (* interrupt_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_1__ sgc; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_flash_req {int sub_func; } ;
struct TYPE_4__ {struct atto_vda_flash_req flash; } ;


 scalar_t__ RS_PENDING ;
 scalar_t__ RS_SUCCESS ;

 int VDA_FLASH_COMMIT ;

 int stub1 (struct esas2r_adapter*,struct esas2r_request*) ;

__attribute__((used)) static void esas2r_fmapi_callback(struct esas2r_adapter *a,
      struct esas2r_request *rq)
{
 struct atto_vda_flash_req *vrq = &rq->vrq->flash;
 struct esas2r_flash_context *fc =
  (struct esas2r_flash_context *)rq->interrupt_cx;

 if (rq->req_stat == RS_SUCCESS) {

  switch (vrq->sub_func) {
  case 129:
   if (fc->sgc.cur_offset == ((void*)0))
    goto commit;

   vrq->sub_func = 128;
   rq->req_stat = RS_PENDING;
   break;

  case 128:
commit:
   vrq->sub_func = VDA_FLASH_COMMIT;
   rq->req_stat = RS_PENDING;
   rq->interrupt_cb = fc->interrupt_cb;
   break;

  default:
   break;
  }
 }

 if (rq->req_stat != RS_PENDING)





  (*fc->interrupt_cb)(a, rq);
}
