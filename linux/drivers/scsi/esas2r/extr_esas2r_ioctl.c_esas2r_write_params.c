
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_request {scalar_t__ req_stat; int comp_cb; } ;
struct esas2r_adapter {scalar_t__ nvram_command_done; int nvram_waiter; } ;


 scalar_t__ RS_SUCCESS ;
 int complete_nvr_req ;
 scalar_t__ esas2r_nvram_write (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sas_nvram*) ;
 int wait_event_interruptible (int ,scalar_t__) ;

int esas2r_write_params(struct esas2r_adapter *a, struct esas2r_request *rq,
   struct esas2r_sas_nvram *data)
{
 int result = 0;

 a->nvram_command_done = 0;
 rq->comp_cb = complete_nvr_req;

 if (esas2r_nvram_write(a, rq, data)) {

  while (!a->nvram_command_done)
   wait_event_interruptible(a->nvram_waiter,
       a->nvram_command_done);
  ;


  if (rq->req_stat == RS_SUCCESS)
   result = 1;
 }
 return result;
}
