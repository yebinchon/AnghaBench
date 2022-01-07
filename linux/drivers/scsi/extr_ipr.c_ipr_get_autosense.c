
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int auto_sense_len; int data; } ;
struct ipr_ioasa64 {TYPE_3__ auto_sense; } ;
struct TYPE_11__ {int auto_sense_len; int data; } ;
struct TYPE_7__ {int ioasc_specific; } ;
struct ipr_ioasa {TYPE_5__ auto_sense; TYPE_1__ hdr; } ;
struct TYPE_12__ {struct ipr_ioasa64 ioasa64; struct ipr_ioasa ioasa; } ;
struct ipr_cmnd {TYPE_4__* scsi_cmd; TYPE_2__* ioa_cfg; TYPE_6__ s; } ;
struct TYPE_10__ {int sense_buffer; } ;
struct TYPE_8__ {scalar_t__ sis64; } ;


 int IPR_AUTOSENSE_VALID ;
 int SCSI_SENSE_BUFFERSIZE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 int min_t (int ,int ,int ) ;
 int u16 ;

__attribute__((used)) static int ipr_get_autosense(struct ipr_cmnd *ipr_cmd)
{
 struct ipr_ioasa *ioasa = &ipr_cmd->s.ioasa;
 struct ipr_ioasa64 *ioasa64 = &ipr_cmd->s.ioasa64;

 if ((be32_to_cpu(ioasa->hdr.ioasc_specific) & IPR_AUTOSENSE_VALID) == 0)
  return 0;

 if (ipr_cmd->ioa_cfg->sis64)
  memcpy(ipr_cmd->scsi_cmd->sense_buffer, ioasa64->auto_sense.data,
         min_t(u16, be16_to_cpu(ioasa64->auto_sense.auto_sense_len),
      SCSI_SENSE_BUFFERSIZE));
 else
  memcpy(ipr_cmd->scsi_cmd->sense_buffer, ioasa->auto_sense.data,
         min_t(u16, be16_to_cpu(ioasa->auto_sense.auto_sense_len),
      SCSI_SENSE_BUFFERSIZE));
 return 1;
}
