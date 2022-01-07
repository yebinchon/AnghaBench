
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct viosrp_crq {int IU_data_ptr; int IU_length; } ;
struct TYPE_5__ {TYPE_1__* window; } ;
struct scsi_info {int dev; TYPE_2__ dds; } ;
struct iu_entry {scalar_t__ iu_len; int remote_token; TYPE_3__* sbuf; } ;
struct ibmvscsis_cmd {int init_time; struct iu_entry* iue; } ;
struct TYPE_6__ {int dma; } ;
struct TYPE_4__ {int liobn; } ;


 int CLIENT_FAILED ;
 int ERR_DISCONNECT_RECONNECT ;




 size_t LOCAL ;
 size_t REMOTE ;
 int RESPONSE_Q_DOWN ;
 scalar_t__ SRP_MAX_IU_LEN ;
 long SRP_VIOLATION ;
 scalar_t__ be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int connection_broken (struct scsi_info*) ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,long) ;
 long h_copy_rdma (scalar_t__,int ,int ,int ,int ) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int) ;
 int mftb () ;

__attribute__((used)) static long ibmvscsis_copy_crq_packet(struct scsi_info *vscsi,
          struct ibmvscsis_cmd *cmd,
          struct viosrp_crq *crq)
{
 struct iu_entry *iue = cmd->iue;
 long rc = 0;
 u16 len;

 len = be16_to_cpu(crq->IU_length);
 if ((len > SRP_MAX_IU_LEN) || (len == 0)) {
  dev_err(&vscsi->dev, "copy_crq: Invalid len %d passed", len);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  return SRP_VIOLATION;
 }

 rc = h_copy_rdma(len, vscsi->dds.window[REMOTE].liobn,
    be64_to_cpu(crq->IU_data_ptr),
    vscsi->dds.window[LOCAL].liobn, iue->sbuf->dma);

 switch (rc) {
 case 128:
  cmd->init_time = mftb();
  iue->remote_token = crq->IU_data_ptr;
  iue->iu_len = len;
  dev_dbg(&vscsi->dev, "copy_crq: ioba 0x%llx, init_time 0x%llx\n",
   be64_to_cpu(crq->IU_data_ptr), cmd->init_time);
  break;
 case 130:
  if (connection_broken(vscsi))
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT,
        (RESPONSE_Q_DOWN |
         CLIENT_FAILED));
  else
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT, 0);

  dev_err(&vscsi->dev, "copy_crq: h_copy_rdma failed, rc %ld\n",
   rc);
  break;
 case 131:
 case 129:
 default:
  dev_err(&vscsi->dev, "copy_crq: h_copy_rdma failed, rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  break;
 }

 return rc;
}
