
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int sense_buffer; TYPE_1__* request; int device; } ;
struct TYPE_2__ {int tag; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 int scmd_name (struct scsi_cmnd const*) ;
 int scsi_log_print_sense (int ,int ,int ,int ,int ) ;

void scsi_print_sense(const struct scsi_cmnd *cmd)
{
 scsi_log_print_sense(cmd->device, scmd_name(cmd), cmd->request->tag,
        cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE);
}
