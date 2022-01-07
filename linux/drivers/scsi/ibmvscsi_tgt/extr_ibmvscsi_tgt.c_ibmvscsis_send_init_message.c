
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct viosrp_crq {int format; int valid; } ;
struct TYPE_2__ {int unit_id; } ;
struct scsi_info {TYPE_1__ dds; } ;


 size_t MSG_HI ;
 size_t MSG_LOW ;
 int VALID_INIT_MSG ;
 int cpu_to_be64 (int ) ;
 long h_send_crq (int ,int ,int ) ;

__attribute__((used)) static long ibmvscsis_send_init_message(struct scsi_info *vscsi, u8 format)
{
 struct viosrp_crq *crq;
 u64 buffer[2] = { 0, 0 };
 long rc;

 crq = (struct viosrp_crq *)&buffer;
 crq->valid = VALID_INIT_MSG;
 crq->format = format;
 rc = h_send_crq(vscsi->dds.unit_id, cpu_to_be64(buffer[MSG_HI]),
   cpu_to_be64(buffer[MSG_LOW]));

 return rc;
}
