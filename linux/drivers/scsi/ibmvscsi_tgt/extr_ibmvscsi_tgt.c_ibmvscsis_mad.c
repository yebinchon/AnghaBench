
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viosrp_crq {int dummy; } ;
struct scsi_info {int state; long flags; int debit; int dev; } ;
struct mad_common {int status; int type; } ;
struct iu_entry {int dummy; } ;
struct ibmvscsis_cmd {int type; struct iu_entry* iue; } ;
struct TYPE_2__ {int mad; } ;


 int ADAPTER_MAD ;
 long ADAPT_SUCCESS ;

 long ERROR ;






 int be16_to_cpu (int ) ;
 long be32_to_cpu (int ) ;
 int dev_dbg (int *,char*,long,...) ;
 int dev_err (int *,char*,int) ;
 long ibmvscsis_copy_crq_packet (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ;
 int ibmvscsis_free_cmd_resources (struct scsi_info*,struct ibmvscsis_cmd*) ;
 struct ibmvscsis_cmd* ibmvscsis_get_free_cmd (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int const,int ) ;
 long ibmvscsis_process_mad (struct scsi_info*,struct iu_entry*) ;
 int ibmvscsis_send_mad_resp (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ;
 TYPE_1__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static long ibmvscsis_mad(struct scsi_info *vscsi, struct viosrp_crq *crq)
{
 struct iu_entry *iue;
 struct ibmvscsis_cmd *cmd;
 struct mad_common *mad;
 long rc = ADAPT_SUCCESS;

 switch (vscsi->state) {





 case 129:
  dev_dbg(&vscsi->dev, "mad: in Wait Connection state, ignoring MAD, flags %d\n",
   vscsi->flags);
  return ADAPT_SUCCESS;

 case 131:
 case 134:
  break;





 case 130:
 case 128:
 case 133:
 case 132:
 default:
  dev_err(&vscsi->dev, "mad: invalid adapter state %d for mad\n",
   vscsi->state);
  return ADAPT_SUCCESS;
 }

 cmd = ibmvscsis_get_free_cmd(vscsi);
 if (!cmd) {
  dev_err(&vscsi->dev, "mad: failed to get cmd, debit %d\n",
   vscsi->debit);
  ibmvscsis_post_disconnect(vscsi, 132, 0);
  return ERROR;
 }
 iue = cmd->iue;
 cmd->type = ADAPTER_MAD;

 rc = ibmvscsis_copy_crq_packet(vscsi, cmd, crq);
 if (!rc) {
  mad = (struct mad_common *)&vio_iu(iue)->mad;

  dev_dbg(&vscsi->dev, "mad: type %d\n", be32_to_cpu(mad->type));

  rc = ibmvscsis_process_mad(vscsi, iue);

  dev_dbg(&vscsi->dev, "mad: status %hd, rc %ld\n",
   be16_to_cpu(mad->status), rc);

  if (!rc)
   ibmvscsis_send_mad_resp(vscsi, cmd, crq);
 } else {
  ibmvscsis_free_cmd_resources(vscsi, cmd);
 }

 dev_dbg(&vscsi->dev, "Leaving mad, rc %ld\n", rc);
 return rc;
}
