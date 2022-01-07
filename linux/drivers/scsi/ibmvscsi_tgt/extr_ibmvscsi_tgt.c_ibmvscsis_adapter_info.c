
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint ;
struct TYPE_9__ {int length; void* status; } ;
struct viosrp_adapter_info {int buffer; TYPE_2__ common; } ;
struct TYPE_12__ {TYPE_4__* window; int partition_num; int partition_name; } ;
struct TYPE_10__ {void* os_type; void* mad_version; int partition_name; int srp_version; void* partition_number; } ;
struct scsi_info {int dev; TYPE_6__* dma_dev; TYPE_5__ dds; TYPE_3__ client_data; int flags; } ;
struct mad_adapter_info_data {void** port_max_txu; void* os_type; void* mad_version; void* partition_number; int partition_name; int srp_version; } ;
struct iu_entry {long target; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {struct viosrp_adapter_info adapter_info; } ;
struct TYPE_14__ {TYPE_1__ mad; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_11__ {int liobn; } ;


 int CLIENT_FAILED ;
 int ERR_DISCONNECT_RECONNECT ;
 int GFP_ATOMIC ;




 int LINUX ;
 size_t LOCAL ;
 int MAD_VERSION_1 ;
 int MAX_TXU ;
 size_t REMOTE ;
 int RESPONSE_Q_DOWN ;
 int SRP_VERSION ;
 int VIOSRP_MAD_FAILED ;
 int VIOSRP_MAD_SUCCESS ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (void*) ;
 int be64_to_cpu (int ) ;
 scalar_t__ connection_broken (struct scsi_info*) ;
 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int dev_dbg (int *,char*,long,...) ;
 int dev_err (int *,char*,long) ;
 int dev_warn (int *,char*,long) ;
 struct mad_adapter_info_data* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct mad_adapter_info_data*,int ) ;
 int dma_wmb () ;
 long h_copy_rdma (int,int ,int ,int ,int ) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int) ;
 int memset (void**,int ,int) ;
 int strncpy (int ,int ,int) ;
 TYPE_7__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static long ibmvscsis_adapter_info(struct scsi_info *vscsi,
       struct iu_entry *iue)
{
 struct viosrp_adapter_info *mad = &vio_iu(iue)->mad.adapter_info;
 struct mad_adapter_info_data *info;
 uint flag_bits = 0;
 dma_addr_t token;
 long rc;

 mad->common.status = cpu_to_be16(VIOSRP_MAD_SUCCESS);

 if (be16_to_cpu(mad->common.length) > sizeof(*info)) {
  mad->common.status = cpu_to_be16(VIOSRP_MAD_FAILED);
  return 0;
 }

 info = dma_alloc_coherent(&vscsi->dma_dev->dev, sizeof(*info), &token,
      GFP_ATOMIC);
 if (!info) {
  dev_err(&vscsi->dev, "bad dma_alloc_coherent %p\n",
   iue->target);
  mad->common.status = cpu_to_be16(VIOSRP_MAD_FAILED);
  return 0;
 }


 rc = h_copy_rdma(be16_to_cpu(mad->common.length),
    vscsi->dds.window[REMOTE].liobn,
    be64_to_cpu(mad->buffer),
    vscsi->dds.window[LOCAL].liobn, token);

 if (rc != 128) {
  if (rc == 130) {
   if (connection_broken(vscsi))
    flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);
  }
  dev_warn(&vscsi->dev, "adapter_info: h_copy_rdma from client failed, rc %ld\n",
    rc);
  dev_dbg(&vscsi->dev, "adapter_info: ioba 0x%llx, flags 0x%x, flag_bits 0x%x\n",
   be64_to_cpu(mad->buffer), vscsi->flags, flag_bits);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT,
       flag_bits);
  goto free_dma;
 }






 if (vscsi->client_data.partition_number == 0)
  vscsi->client_data.partition_number =
   be32_to_cpu(info->partition_number);
 strncpy(vscsi->client_data.srp_version, info->srp_version,
  sizeof(vscsi->client_data.srp_version));
 strncpy(vscsi->client_data.partition_name, info->partition_name,
  sizeof(vscsi->client_data.partition_name));
 vscsi->client_data.mad_version = be32_to_cpu(info->mad_version);
 vscsi->client_data.os_type = be32_to_cpu(info->os_type);


 strncpy(info->srp_version, SRP_VERSION,
  sizeof(info->srp_version));
 strncpy(info->partition_name, vscsi->dds.partition_name,
  sizeof(info->partition_name));
 info->partition_number = cpu_to_be32(vscsi->dds.partition_num);
 info->mad_version = cpu_to_be32(MAD_VERSION_1);
 info->os_type = cpu_to_be32(LINUX);
 memset(&info->port_max_txu[0], 0, sizeof(info->port_max_txu));
 info->port_max_txu[0] = cpu_to_be32(MAX_TXU);

 dma_wmb();
 rc = h_copy_rdma(sizeof(*info), vscsi->dds.window[LOCAL].liobn,
    token, vscsi->dds.window[REMOTE].liobn,
    be64_to_cpu(mad->buffer));
 switch (rc) {
 case 128:
  break;

 case 129:
 case 131:
 case 130:
  if (connection_broken(vscsi))
   flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);

 default:
  dev_err(&vscsi->dev, "adapter_info: h_copy_rdma to client failed, rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi,
       ERR_DISCONNECT_RECONNECT,
       flag_bits);
  break;
 }

free_dma:
 dma_free_coherent(&vscsi->dma_dev->dev, sizeof(*info), info, token);
 dev_dbg(&vscsi->dev, "Leaving adapter_info, rc %ld\n", rc);

 return rc;
}
