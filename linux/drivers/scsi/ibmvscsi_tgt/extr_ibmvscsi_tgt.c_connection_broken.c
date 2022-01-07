
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct viosrp_crq {int status; int format; int valid; } ;
struct TYPE_2__ {int unit_id; } ;
struct scsi_info {int dev; TYPE_1__ dds; } ;


 long H_CLOSED ;
 int MESSAGE_IN_CRQ ;
 size_t MSG_HI ;
 size_t MSG_LOW ;
 int PING ;
 int VALID_CMD_RESP_EL ;
 int cpu_to_be64 (int ) ;
 int dev_dbg (int *,char*,long) ;
 long h_send_crq (int ,int ,int ) ;

__attribute__((used)) static bool connection_broken(struct scsi_info *vscsi)
{
 struct viosrp_crq *crq;
 u64 buffer[2] = { 0, 0 };
 long h_return_code;
 bool rc = 0;


 crq = (struct viosrp_crq *)&buffer;
 crq->valid = VALID_CMD_RESP_EL;
 crq->format = MESSAGE_IN_CRQ;
 crq->status = PING;

 h_return_code = h_send_crq(vscsi->dds.unit_id,
       cpu_to_be64(buffer[MSG_HI]),
       cpu_to_be64(buffer[MSG_LOW]));

 dev_dbg(&vscsi->dev, "Connection_broken: rc %ld\n", h_return_code);

 if (h_return_code == H_CLOSED)
  rc = 1;

 return rc;
}
