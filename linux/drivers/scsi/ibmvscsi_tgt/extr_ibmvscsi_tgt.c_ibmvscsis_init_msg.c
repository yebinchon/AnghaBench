
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u64 ;
struct viosrp_crq {scalar_t__ format; } ;
struct TYPE_4__ {long partition_number; } ;
struct TYPE_3__ {int unit_id; } ;
struct scsi_info {long state; int dev; TYPE_2__ client_data; scalar_t__ map_buf; scalar_t__ map_ioba; TYPE_1__ dds; } ;


 long ADAPT_SUCCESS ;
 long ERROR ;
 int ERR_DISCONNECT_RECONNECT ;
 int H_GET_PARTNER_INFO ;
 long H_SUCCESS ;
 scalar_t__ INIT_COMPLETE_MSG ;
 scalar_t__ INIT_MSG ;
 scalar_t__ PAGE_SIZE ;
 long be64_to_cpu (int) ;
 int dev_dbg (int *,char*,long) ;
 int dev_err (int *,char*,int ) ;
 long h_vioctl (int ,int ,int,int ,int ,int ,int ) ;
 long ibmvscsis_handle_init_compl_msg (struct scsi_info*) ;
 long ibmvscsis_handle_init_msg (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int ) ;

__attribute__((used)) static long ibmvscsis_init_msg(struct scsi_info *vscsi, struct viosrp_crq *crq)
{
 long rc = ADAPT_SUCCESS;

 dev_dbg(&vscsi->dev, "init_msg: state 0x%hx\n", vscsi->state);

 rc = h_vioctl(vscsi->dds.unit_id, H_GET_PARTNER_INFO,
        (u64)vscsi->map_ioba | ((u64)PAGE_SIZE << 32), 0, 0, 0,
        0);
 if (rc == H_SUCCESS) {
  vscsi->client_data.partition_number =
   be64_to_cpu(*(u64 *)vscsi->map_buf);
  dev_dbg(&vscsi->dev, "init_msg, part num %d\n",
   vscsi->client_data.partition_number);
 } else {
  dev_dbg(&vscsi->dev, "init_msg h_vioctl rc %ld\n", rc);
  rc = ADAPT_SUCCESS;
 }

 if (crq->format == INIT_MSG) {
  rc = ibmvscsis_handle_init_msg(vscsi);
 } else if (crq->format == INIT_COMPLETE_MSG) {
  rc = ibmvscsis_handle_init_compl_msg(vscsi);
 } else {
  rc = ERROR;
  dev_err(&vscsi->dev, "init_msg: invalid format %d\n",
   (uint)crq->format);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
 }

 return rc;
}
