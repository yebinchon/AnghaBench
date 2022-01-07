
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_request {scalar_t__ req_stat; TYPE_1__* vrq; } ;
struct esas2r_adapter {int nvram_semaphore; int flags; } ;
struct atto_vda_flash_req {int sub_func; } ;
struct TYPE_2__ {struct atto_vda_flash_req flash; } ;


 int AF_NVR_VALID ;
 scalar_t__ RS_PENDING ;
 scalar_t__ RS_SUCCESS ;




 int clear_bit (int ,int *) ;
 int esas2r_enable_heartbeat (struct esas2r_adapter*) ;
 int esas2r_nvram_validate (struct esas2r_adapter*) ;
 int set_bit (int ,int *) ;
 int up (int *) ;

__attribute__((used)) static void esas2r_nvram_callback(struct esas2r_adapter *a,
      struct esas2r_request *rq)
{
 struct atto_vda_flash_req *vrq = &rq->vrq->flash;

 if (rq->req_stat == RS_SUCCESS) {


  switch (vrq->sub_func) {
  case 131:
   vrq->sub_func = 128;
   rq->req_stat = RS_PENDING;
   break;

  case 128:
   vrq->sub_func = 130;
   rq->req_stat = RS_PENDING;
   break;

  case 129:
   esas2r_nvram_validate(a);
   break;

  case 130:
  default:
   break;
  }
 }

 if (rq->req_stat != RS_PENDING) {

  if (rq->req_stat == RS_SUCCESS)
   set_bit(AF_NVR_VALID, &a->flags);
  else
   clear_bit(AF_NVR_VALID, &a->flags);

  esas2r_enable_heartbeat(a);

  up(&a->nvram_semaphore);
 }
}
