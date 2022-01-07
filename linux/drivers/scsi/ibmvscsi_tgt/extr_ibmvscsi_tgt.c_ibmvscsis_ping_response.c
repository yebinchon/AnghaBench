
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct viosrp_crq {int status; scalar_t__ format; int valid; } ;
struct TYPE_2__ {int unit_id; } ;
struct scsi_info {int dev; int flags; TYPE_1__ dds; } ;


 int CLIENT_FAILED ;
 int ERR_DISCONNECT ;
 int ERR_DISCONNECT_RECONNECT ;




 scalar_t__ MESSAGE_IN_CRQ ;
 size_t MSG_HI ;
 size_t MSG_LOW ;
 int PING_RESPONSE ;
 int RESPONSE_Q_DOWN ;
 int VALID_CMD_RESP_EL ;
 int cpu_to_be64 (int ) ;
 int dev_err (int *,char*,long) ;
 long h_send_crq (int ,int ,int ) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int ) ;

__attribute__((used)) static long ibmvscsis_ping_response(struct scsi_info *vscsi)
{
 struct viosrp_crq *crq;
 u64 buffer[2] = { 0, 0 };
 long rc;

 crq = (struct viosrp_crq *)&buffer;
 crq->valid = VALID_CMD_RESP_EL;
 crq->format = (u8)MESSAGE_IN_CRQ;
 crq->status = PING_RESPONSE;

 rc = h_send_crq(vscsi->dds.unit_id, cpu_to_be64(buffer[MSG_HI]),
   cpu_to_be64(buffer[MSG_LOW]));

 switch (rc) {
 case 128:
  break;
 case 131:
  vscsi->flags |= CLIENT_FAILED;

 case 130:
  vscsi->flags |= RESPONSE_Q_DOWN;

 case 129:
  dev_err(&vscsi->dev, "ping_response: h_send_crq failed, rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  break;
 default:
  dev_err(&vscsi->dev, "ping_response: h_send_crq returned unknown rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT, 0);
  break;
 }

 return rc;
}
