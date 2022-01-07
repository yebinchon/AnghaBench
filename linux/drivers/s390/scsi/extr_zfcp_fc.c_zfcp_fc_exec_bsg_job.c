
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_ct_els {struct bsg_job* handler_data; int resp; int req; } ;
struct zfcp_adapter {int status; } ;
struct fc_rport {int dummy; } ;
struct fc_bsg_request {int msgcode; } ;
struct TYPE_4__ {int sg_list; } ;
struct TYPE_3__ {int sg_list; } ;
struct bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_request* request; struct zfcp_fsf_ct_els* dd_data; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;


 int EINVAL ;




 int ZFCP_STATUS_COMMON_OPEN ;
 int atomic_read (int *) ;
 struct fc_rport* fc_bsg_to_rport (struct bsg_job*) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;
 int zfcp_fc_exec_ct_job (struct bsg_job*,struct zfcp_adapter*) ;
 int zfcp_fc_exec_els_job (struct bsg_job*,struct zfcp_adapter*) ;

int zfcp_fc_exec_bsg_job(struct bsg_job *job)
{
 struct Scsi_Host *shost;
 struct zfcp_adapter *adapter;
 struct zfcp_fsf_ct_els *ct_els = job->dd_data;
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_rport *rport = fc_bsg_to_rport(job);

 shost = rport ? rport_to_shost(rport) : fc_bsg_to_shost(job);
 adapter = (struct zfcp_adapter *)shost->hostdata[0];

 if (!(atomic_read(&adapter->status) & ZFCP_STATUS_COMMON_OPEN))
  return -EINVAL;

 ct_els->req = job->request_payload.sg_list;
 ct_els->resp = job->reply_payload.sg_list;
 ct_els->handler_data = job;

 switch (bsg_request->msgcode) {
 case 128:
 case 130:
  return zfcp_fc_exec_els_job(job, adapter);
 case 129:
 case 131:
  return zfcp_fc_exec_ct_job(job, adapter);
 default:
  return -EINVAL;
 }
}
