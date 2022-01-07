
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sas_ha_struct {int num_phys; } ;
struct TYPE_6__ {int payload_len; int sg_cnt; int sg_list; } ;
struct TYPE_5__ {int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_3__ reply_payload; TYPE_2__ request_payload; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_4__ {char* name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SAS_EXPANDER_PRODUCT_ID_LEN ;
 int SAS_EXPANDER_VENDOR_ID_LEN ;
 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int SMP_REQUEST ;
 int SMP_RESPONSE ;
 int SMP_RESP_FUNC_ACC ;
 int SMP_RESP_FUNC_UNK ;
 int SMP_RESP_INV_FRM_LEN ;

 int bsg_job_done (struct bsg_job*,int,unsigned int) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int max (int,unsigned int) ;
 int memcpy (int*,char*,int ) ;
 int sas_host_smp_discover (struct sas_ha_struct*,int*,int) ;
 int sas_host_smp_write_gpio (struct sas_ha_struct*,int*,int,int,int,int*) ;
 int sas_phy_control (struct sas_ha_struct*,int,int,int,int,int*) ;
 int sas_report_phy_sata (struct sas_ha_struct*,int*,int) ;
 int sg_copy_from_buffer (int ,int ,int*,int) ;
 int sg_copy_to_buffer (int ,int ,int*,int) ;

void sas_smp_host_handler(struct bsg_job *job, struct Scsi_Host *shost)
{
 struct sas_ha_struct *sas_ha = SHOST_TO_SAS_HA(shost);
 u8 *req_data, *resp_data;
 unsigned int reslen = 0;
 int error = -EINVAL;


 if (job->request_payload.payload_len < 8 ||
     job->reply_payload.payload_len < 8)
  goto out;

 error = -ENOMEM;
 req_data = kzalloc(job->request_payload.payload_len, GFP_KERNEL);
 if (!req_data)
  goto out;
 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt, req_data,
     job->request_payload.payload_len);



 resp_data = kzalloc(max(job->reply_payload.payload_len, 128U),
   GFP_KERNEL);
 if (!resp_data)
  goto out_free_req;

 error = -EINVAL;
 if (req_data[0] != SMP_REQUEST)
  goto out_free_resp;


 resp_data[0] = SMP_RESPONSE;
 resp_data[1] = req_data[1];
 resp_data[2] = SMP_RESP_FUNC_UNK;

 switch (req_data[1]) {
 case 133:
  resp_data[2] = SMP_RESP_FUNC_ACC;
  resp_data[9] = sas_ha->num_phys;
  reslen = 32;
  break;

 case 132:
  resp_data[2] = SMP_RESP_FUNC_ACC;
  memcpy(resp_data + 12, shost->hostt->name,
         SAS_EXPANDER_VENDOR_ID_LEN);
  memcpy(resp_data + 20, "libsas virt phy",
         SAS_EXPANDER_PRODUCT_ID_LEN);
  reslen = 64;
  break;

 case 134:

  break;

 case 137:
  if (job->request_payload.payload_len < 16)
   goto out_free_resp;
  sas_host_smp_discover(sas_ha, resp_data, req_data[9]);
  reslen = 56;
  break;

 case 131:


  break;

 case 130:
  if (job->request_payload.payload_len < 16)
   goto out_free_resp;
  sas_report_phy_sata(sas_ha, resp_data, req_data[9]);
  reslen = 60;
  break;

 case 129:

  break;

 case 128: {

  const int base_frame_size = 11;
  int to_write = req_data[4];

  if (job->request_payload.payload_len <
    base_frame_size + to_write * 4) {
   resp_data[2] = SMP_RESP_INV_FRM_LEN;
   break;
  }

  to_write = sas_host_smp_write_gpio(sas_ha, resp_data, req_data[2],
         req_data[3], to_write, &req_data[8]);
  reslen = 8;
  break;
 }

 case 138:

  break;

 case 136:
  if (job->request_payload.payload_len < 44)
   goto out_free_resp;
  sas_phy_control(sas_ha, req_data[9], req_data[10],
    req_data[32] >> 4, req_data[33] >> 4,
    resp_data);
  reslen = 8;
  break;

 case 135:

  break;

 default:

  break;
 }

 sg_copy_from_buffer(job->reply_payload.sg_list,
       job->reply_payload.sg_cnt, resp_data,
       job->reply_payload.payload_len);

 error = 0;
out_free_resp:
 kfree(resp_data);
out_free_req:
 kfree(req_data);
out:
 bsg_job_done(job, error, reslen);
}
