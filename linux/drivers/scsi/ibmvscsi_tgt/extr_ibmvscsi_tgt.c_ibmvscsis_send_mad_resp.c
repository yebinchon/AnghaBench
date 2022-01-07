
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint ;
struct viosrp_crq {int IU_data_ptr; } ;
struct TYPE_8__ {TYPE_2__* window; } ;
struct scsi_info {int dev; int waiting_rsp; TYPE_3__ dds; } ;
struct mad_common {int tag; } ;
struct iu_entry {TYPE_1__* sbuf; } ;
struct TYPE_9__ {int len; int tag; int format; } ;
struct ibmvscsis_cmd {int list; TYPE_4__ rsp; struct iu_entry* iue; } ;
struct TYPE_10__ {int mad; } ;
struct TYPE_7__ {int liobn; } ;
struct TYPE_6__ {int dma; } ;


 int CLIENT_FAILED ;
 int ERR_DISCONNECT_RECONNECT ;
 long H_PERMISSION ;
 size_t LOCAL ;
 size_t REMOTE ;
 int RESPONSE_Q_DOWN ;
 int VIOSRP_MAD_FORMAT ;
 int be64_to_cpu (int ) ;
 scalar_t__ connection_broken (struct scsi_info*) ;
 int dev_dbg (int *,char*,long) ;
 int dev_err (int *,char*,long) ;
 int dma_wmb () ;
 long h_copy_rdma (int,int ,int ,int ,int ) ;
 int ibmvscsis_free_cmd_resources (struct scsi_info*,struct ibmvscsis_cmd*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int) ;
 int ibmvscsis_send_messages (struct scsi_info*) ;
 int list_add_tail (int *,int *) ;
 TYPE_5__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static void ibmvscsis_send_mad_resp(struct scsi_info *vscsi,
        struct ibmvscsis_cmd *cmd,
        struct viosrp_crq *crq)
{
 struct iu_entry *iue = cmd->iue;
 struct mad_common *mad = (struct mad_common *)&vio_iu(iue)->mad;
 uint flag_bits = 0;
 long rc;

 dma_wmb();
 rc = h_copy_rdma(sizeof(struct mad_common),
    vscsi->dds.window[LOCAL].liobn, iue->sbuf->dma,
    vscsi->dds.window[REMOTE].liobn,
    be64_to_cpu(crq->IU_data_ptr));
 if (!rc) {
  cmd->rsp.format = VIOSRP_MAD_FORMAT;
  cmd->rsp.len = sizeof(struct mad_common);
  cmd->rsp.tag = mad->tag;
  list_add_tail(&cmd->list, &vscsi->waiting_rsp);
  ibmvscsis_send_messages(vscsi);
 } else {
  dev_dbg(&vscsi->dev, "Error sending mad response, rc %ld\n",
   rc);
  if (rc == H_PERMISSION) {
   if (connection_broken(vscsi))
    flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);
  }
  dev_err(&vscsi->dev, "mad: failed to copy to client, rc %ld\n",
   rc);

  ibmvscsis_free_cmd_resources(vscsi, cmd);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT,
       flag_bits);
 }
}
