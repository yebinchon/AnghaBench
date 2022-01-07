
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct fc_rport_priv {int kref; int e_d_tov; } ;
struct fc_rport {int port_id; struct fc_rport_priv* dd_data; } ;
struct fc_lport {int lp_mutex; int e_d_tov; struct fc_rport_priv* dns_rdata; } ;
struct TYPE_5__ {int port_id; } ;
struct TYPE_4__ {int port_id; } ;
struct TYPE_6__ {TYPE_2__ h_els; TYPE_1__ h_ct; } ;
struct fc_bsg_request {int msgcode; TYPE_3__ rqst_data; } ;
struct fc_bsg_reply {scalar_t__ reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;




 int FC_FID_DIR_SERV ;
 struct fc_rport* fc_bsg_to_rport (struct bsg_job*) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 int fc_lport_ct_request (struct bsg_job*,struct fc_lport*,int ,int ) ;
 int fc_lport_els_request (struct bsg_job*,struct fc_lport*,int ,int ) ;
 int fc_rport_destroy ;
 struct fc_rport_priv* fc_rport_lookup (struct fc_lport*,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ntoh24 (int ) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;

int fc_lport_bsg_request(struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct Scsi_Host *shost = fc_bsg_to_shost(job);
 struct fc_lport *lport = shost_priv(shost);
 struct fc_rport *rport;
 struct fc_rport_priv *rdata;
 int rc = -EINVAL;
 u32 did, tov;

 bsg_reply->reply_payload_rcv_len = 0;

 mutex_lock(&lport->lp_mutex);

 switch (bsg_request->msgcode) {
 case 128:
  rport = fc_bsg_to_rport(job);
  if (!rport)
   break;

  rdata = rport->dd_data;
  rc = fc_lport_els_request(job, lport, rport->port_id,
       rdata->e_d_tov);
  break;

 case 129:
  rport = fc_bsg_to_rport(job);
  if (!rport)
   break;

  rdata = rport->dd_data;
  rc = fc_lport_ct_request(job, lport, rport->port_id,
      rdata->e_d_tov);
  break;

 case 131:
  did = ntoh24(bsg_request->rqst_data.h_ct.port_id);
  if (did == FC_FID_DIR_SERV) {
   rdata = lport->dns_rdata;
   if (!rdata)
    break;
   tov = rdata->e_d_tov;
  } else {
   rdata = fc_rport_lookup(lport, did);
   if (!rdata)
    break;
   tov = rdata->e_d_tov;
   kref_put(&rdata->kref, fc_rport_destroy);
  }

  rc = fc_lport_ct_request(job, lport, did, tov);
  break;

 case 130:
  did = ntoh24(bsg_request->rqst_data.h_els.port_id);
  rc = fc_lport_els_request(job, lport, did, lport->e_d_tov);
  break;
 }

 mutex_unlock(&lport->lp_mutex);
 return rc;
}
