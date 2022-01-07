
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int residual_count; } ;
struct vscsibk_pend {unsigned char* sense_buffer; int result; TYPE_1__ se_cmd; struct vscsibk_info* info; } ;
struct vscsibk_info {int dummy; } ;


 scalar_t__ log_print_stat ;
 int scsiback_do_resp_with_sense (unsigned char*,int,unsigned int,struct vscsibk_pend*) ;
 int scsiback_fast_flush_area (struct vscsibk_pend*) ;
 int scsiback_print_status (unsigned char*,int,struct vscsibk_pend*) ;
 int scsiback_put (struct vscsibk_info*) ;
 int target_put_sess_cmd (TYPE_1__*) ;

__attribute__((used)) static void scsiback_cmd_done(struct vscsibk_pend *pending_req)
{
 struct vscsibk_info *info = pending_req->info;
 unsigned char *sense_buffer;
 unsigned int resid;
 int errors;

 sense_buffer = pending_req->sense_buffer;
 resid = pending_req->se_cmd.residual_count;
 errors = pending_req->result;

 if (errors && log_print_stat)
  scsiback_print_status(sense_buffer, errors, pending_req);

 scsiback_fast_flush_area(pending_req);
 scsiback_do_resp_with_sense(sense_buffer, errors, resid, pending_req);
 scsiback_put(info);





 target_put_sess_cmd(&pending_req->se_cmd);
}
