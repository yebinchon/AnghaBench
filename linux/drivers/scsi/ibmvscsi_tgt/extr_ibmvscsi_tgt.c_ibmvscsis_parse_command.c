
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct viosrp_crq {int valid; int format; int status; } ;
struct scsi_info {int flags; int dev; } ;


 long ADAPT_SUCCESS ;

 long ERROR ;
 int ERR_DISCONNECT_RECONNECT ;




 int PING ;
 int PROCESSING_MAD ;
 long SCHEDULE_DISCONNECT ;




 int dev_err (int *,char*,...) ;
 long ibmvscsis_init_msg (struct scsi_info*,struct viosrp_crq*) ;
 long ibmvscsis_mad (struct scsi_info*,struct viosrp_crq*) ;
 int ibmvscsis_ping_response (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int ) ;
 int ibmvscsis_srp_cmd (struct scsi_info*,struct viosrp_crq*) ;
 long ibmvscsis_trans_event (struct scsi_info*,struct viosrp_crq*) ;

__attribute__((used)) static long ibmvscsis_parse_command(struct scsi_info *vscsi,
        struct viosrp_crq *crq)
{
 long rc = ADAPT_SUCCESS;

 switch (crq->valid) {
 case 130:
  switch (crq->format) {
  case 132:
  case 136:
  case 135:
  case 134:
   if (vscsi->flags & PROCESSING_MAD) {
    rc = ERROR;
    dev_err(&vscsi->dev, "parse_command: already processing mad\n");
    ibmvscsis_post_disconnect(vscsi,
             ERR_DISCONNECT_RECONNECT,
             0);
   } else {
    vscsi->flags |= PROCESSING_MAD;
    rc = ibmvscsis_mad(vscsi, crq);
   }
   break;

  case 131:
   ibmvscsis_srp_cmd(vscsi, crq);
   break;

  case 133:
   if (crq->status == PING)
    ibmvscsis_ping_response(vscsi);
   break;

  default:
   dev_err(&vscsi->dev, "parse_command: invalid format %d\n",
    (uint)crq->format);
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT, 0);
   break;
  }
  break;

 case 128:
  rc = ibmvscsis_trans_event(vscsi, crq);
  break;

 case 129:
  rc = ibmvscsis_init_msg(vscsi, crq);
  break;

 default:
  dev_err(&vscsi->dev, "parse_command: invalid valid field %d\n",
   (uint)crq->valid);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  break;
 }





 rc = vscsi->flags & SCHEDULE_DISCONNECT;

 return rc;
}
