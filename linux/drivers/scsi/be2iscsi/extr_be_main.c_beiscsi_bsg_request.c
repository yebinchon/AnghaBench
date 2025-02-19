
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iscsi_bsg_request {int msgcode; } ;
struct iscsi_bsg_reply {unsigned short result; int reply_payload_rcv_len; } ;
struct TYPE_9__ {int sg_cnt; int sg_list; } ;
struct TYPE_7__ {int payload_len; } ;
struct bsg_job {TYPE_3__ reply_payload; TYPE_1__ request_payload; struct iscsi_bsg_reply* reply; struct iscsi_bsg_request* request; } ;
struct TYPE_11__ {unsigned short* mcc_tag_status; TYPE_4__* pdev; TYPE_2__* ptag_state; int * mcc_wait; } ;
struct beiscsi_hba {int state; TYPE_5__ ctrl; } ;
struct be_dma_mem {int dma; int * va; int size; } ;
struct be_cmd_resp_hdr {int response_length; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {int tag_state; } ;


 int BEISCSI_HBA_ONLINE ;
 int BEISCSI_HOST_MBX_TIMEOUT ;
 int BEISCSI_LOG_CONFIG ;
 unsigned short CQE_STATUS_ADDL_MASK ;
 unsigned short CQE_STATUS_ADDL_SHIFT ;
 unsigned short CQE_STATUS_MASK ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;

 int KERN_ERR ;
 int KERN_INFO ;
 int MCC_TAG_STATE_RUNNING ;
 int beiscsi_hba_is_online (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 int bsg_job_done (struct bsg_job*,unsigned short,int ) ;
 int clear_bit (int ,int *) ;
 int * dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int free_mcc_wrb (TYPE_5__*,unsigned int) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_job_to_shost (struct bsg_job*) ;
 unsigned int mgmt_vendor_specific_fw_cmd (TYPE_5__*,struct beiscsi_hba*,struct bsg_job*,struct be_dma_mem*) ;
 int msecs_to_jiffies (int ) ;
 int sg_copy_from_buffer (int ,int ,int *,int ) ;
 int test_bit (int ,int*) ;
 int wait_event_interruptible_timeout (int ,unsigned short,int ) ;

__attribute__((used)) static int beiscsi_bsg_request(struct bsg_job *job)
{
 struct Scsi_Host *shost;
 struct beiscsi_hba *phba;
 struct iscsi_bsg_request *bsg_req = job->request;
 int rc = -EINVAL;
 unsigned int tag;
 struct be_dma_mem nonemb_cmd;
 struct be_cmd_resp_hdr *resp;
 struct iscsi_bsg_reply *bsg_reply = job->reply;
 unsigned short status, extd_status;

 shost = iscsi_job_to_shost(job);
 phba = iscsi_host_priv(shost);

 if (!beiscsi_hba_is_online(phba)) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BM_%d : HBA in error 0x%lx\n", phba->state);
  return -ENXIO;
 }

 switch (bsg_req->msgcode) {
 case 128:
  nonemb_cmd.va = dma_alloc_coherent(&phba->ctrl.pdev->dev,
     job->request_payload.payload_len,
     &nonemb_cmd.dma, GFP_KERNEL);
  if (nonemb_cmd.va == ((void*)0)) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : Failed to allocate memory for "
        "beiscsi_bsg_request\n");
   return -ENOMEM;
  }
  tag = mgmt_vendor_specific_fw_cmd(&phba->ctrl, phba, job,
        &nonemb_cmd);
  if (!tag) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : MBX Tag Allocation Failed\n");

   dma_free_coherent(&phba->ctrl.pdev->dev, nonemb_cmd.size,
         nonemb_cmd.va, nonemb_cmd.dma);
   return -EAGAIN;
  }

  rc = wait_event_interruptible_timeout(
     phba->ctrl.mcc_wait[tag],
     phba->ctrl.mcc_tag_status[tag],
     msecs_to_jiffies(
     BEISCSI_HOST_MBX_TIMEOUT));

  if (!test_bit(BEISCSI_HBA_ONLINE, &phba->state)) {
   clear_bit(MCC_TAG_STATE_RUNNING,
      &phba->ctrl.ptag_state[tag].tag_state);
   dma_free_coherent(&phba->ctrl.pdev->dev, nonemb_cmd.size,
         nonemb_cmd.va, nonemb_cmd.dma);
   return -EIO;
  }
  extd_status = (phba->ctrl.mcc_tag_status[tag] &
          CQE_STATUS_ADDL_MASK) >> CQE_STATUS_ADDL_SHIFT;
  status = phba->ctrl.mcc_tag_status[tag] & CQE_STATUS_MASK;
  free_mcc_wrb(&phba->ctrl, tag);
  resp = (struct be_cmd_resp_hdr *)nonemb_cmd.va;
  sg_copy_from_buffer(job->reply_payload.sg_list,
        job->reply_payload.sg_cnt,
        nonemb_cmd.va, (resp->response_length
        + sizeof(*resp)));
  bsg_reply->reply_payload_rcv_len = resp->response_length;
  bsg_reply->result = status;
  bsg_job_done(job, bsg_reply->result,
        bsg_reply->reply_payload_rcv_len);
  dma_free_coherent(&phba->ctrl.pdev->dev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
  if (status || extd_status) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BM_%d : MBX Cmd Failed"
        " status = %d extd_status = %d\n",
        status, extd_status);

   return -EIO;
  } else {
   rc = 0;
  }
  break;

 default:
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
    "BM_%d : Unsupported bsg command: 0x%x\n",
    bsg_req->msgcode);
  break;
 }

 return rc;
}
