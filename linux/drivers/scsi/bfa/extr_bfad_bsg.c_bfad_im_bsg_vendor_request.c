
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int * vendor_cmd; } ;
struct TYPE_6__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; } ;
struct TYPE_8__ {int payload_len; int sg_cnt; int sg_list; } ;
struct TYPE_7__ {int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {int reply_len; TYPE_4__ reply_payload; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct bfad_s {int dummy; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {int dummy; } ;


 int BFA_STATUS_OK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct bfad_im_port_s* bfad_get_im_port (struct Scsi_Host*) ;
 int bfad_iocmd_handler (struct bfad_s*,int ,void*,int ) ;
 int bsg_job_done (struct bsg_job*,int,int) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int sg_copy_from_buffer (int ,int ,void*,int) ;
 int sg_copy_to_buffer (int ,int ,void*,int ) ;

__attribute__((used)) static int
bfad_im_bsg_vendor_request(struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 uint32_t vendor_cmd = bsg_request->rqst_data.h_vendor.vendor_cmd[0];
 struct Scsi_Host *shost = fc_bsg_to_shost(job);
 struct bfad_im_port_s *im_port = bfad_get_im_port(shost);
 struct bfad_s *bfad = im_port->bfad;
 void *payload_kbuf;
 int rc = -EINVAL;


 payload_kbuf = kzalloc(job->request_payload.payload_len, GFP_KERNEL);
 if (!payload_kbuf) {
  rc = -ENOMEM;
  goto out;
 }


 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt, payload_kbuf,
     job->request_payload.payload_len);


 rc = bfad_iocmd_handler(bfad, vendor_cmd, payload_kbuf,
    job->request_payload.payload_len);
 if (rc != BFA_STATUS_OK)
  goto error;


 sg_copy_from_buffer(job->reply_payload.sg_list,
       job->reply_payload.sg_cnt,
       payload_kbuf,
       job->reply_payload.payload_len);


 kfree(payload_kbuf);


 job->reply_len = job->reply_payload.payload_len;
 bsg_reply->reply_payload_rcv_len = job->reply_payload.payload_len;
 bsg_reply->result = rc;

 bsg_job_done(job, bsg_reply->result,
         bsg_reply->reply_payload_rcv_len);
 return rc;
error:

 kfree(payload_kbuf);
out:
 bsg_reply->result = rc;
 job->reply_len = sizeof(uint32_t);
 bsg_reply->reply_payload_rcv_len = 0;
 return rc;
}
