
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct zfcp_fc_wka_port {int dummy; } ;
struct zfcp_adapter {TYPE_3__* gs; } ;
struct fc_rport {int dummy; } ;
struct TYPE_4__ {int preamble_word1; } ;
struct TYPE_5__ {TYPE_1__ r_ct; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct bsg_job {struct fc_bsg_request* request; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_6__ {struct zfcp_fc_wka_port ds; struct zfcp_fc_wka_port ts; struct zfcp_fc_wka_port ms; struct zfcp_fc_wka_port as; } ;






 struct fc_rport* fc_bsg_to_rport (struct bsg_job*) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 struct Scsi_Host* rport_to_shost (struct fc_rport*) ;

__attribute__((used)) static struct zfcp_fc_wka_port *zfcp_fc_job_wka_port(struct bsg_job *job)
{
 u32 preamble_word1;
 u8 gs_type;
 struct zfcp_adapter *adapter;
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_rport *rport = fc_bsg_to_rport(job);
 struct Scsi_Host *shost;

 preamble_word1 = bsg_request->rqst_data.r_ct.preamble_word1;
 gs_type = (preamble_word1 & 0xff000000) >> 24;

 shost = rport ? rport_to_shost(rport) : fc_bsg_to_shost(job);
 adapter = (struct zfcp_adapter *) shost->hostdata[0];

 switch (gs_type) {
 case 131:
  return &adapter->gs->as;
 case 129:
  return &adapter->gs->ms;
 case 128:
  return &adapter->gs->ts;
  break;
 case 130:
  return &adapter->gs->ds;
  break;
 default:
  return ((void*)0);
 }
}
