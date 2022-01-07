
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct scsi_cmnd {TYPE_1__* device; } ;
typedef int srb_t ;
struct TYPE_2__ {int host; } ;


 struct scsi_cmnd* GET_CMD_SP (int *) ;
 scalar_t__ PO_MODE_DIF_INSERT ;
 scalar_t__ PO_MODE_DIF_PASS ;
 scalar_t__ PO_MODE_DIF_REMOVE ;
 scalar_t__ PO_MODE_DIF_TCP_CKSUM ;






 int SHOST_DIX_GUARD_IP ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;
 int scsi_host_get_guard (int ) ;
 int scsi_prot_sg_count (struct scsi_cmnd*) ;

inline int
qla24xx_configure_prot_mode(srb_t *sp, uint16_t *fw_prot_opts)
{
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);
 uint8_t guard = scsi_host_get_guard(cmd->device->host);


 *fw_prot_opts = 0;


 switch (scsi_get_prot_op(cmd)) {
 case 131:
  *fw_prot_opts |= PO_MODE_DIF_REMOVE;
  break;
 case 130:
  *fw_prot_opts |= PO_MODE_DIF_INSERT;
  break;
 case 133:
  *fw_prot_opts |= PO_MODE_DIF_INSERT;
  break;
 case 128:
  *fw_prot_opts |= PO_MODE_DIF_REMOVE;
  break;
 case 132:
 case 129:
  if (guard & SHOST_DIX_GUARD_IP)
   *fw_prot_opts |= PO_MODE_DIF_TCP_CKSUM;
  else
   *fw_prot_opts |= PO_MODE_DIF_PASS;
  break;
 default:
  *fw_prot_opts |= PO_MODE_DIF_PASS;
  break;
 }

 return scsi_prot_sg_count(cmd);
}
