
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct TYPE_2__ {scalar_t__ sge_valid; } ;
struct qedi_cmd {TYPE_1__ io_tbl; struct scsi_cmnd* scsi_cmd; } ;


 int scsi_dma_unmap (struct scsi_cmnd*) ;

void qedi_iscsi_unmap_sg_list(struct qedi_cmd *cmd)
{
 struct scsi_cmnd *sc = cmd->scsi_cmd;

 if (cmd->io_tbl.sge_valid && sc) {
  cmd->io_tbl.sge_valid = 0;
  scsi_dma_unmap(sc);
 }
}
