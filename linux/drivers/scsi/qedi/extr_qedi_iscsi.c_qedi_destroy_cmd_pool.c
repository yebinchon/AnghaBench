
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sge {int dummy; } ;
struct qedi_ctx {TYPE_2__* pdev; } ;
struct TYPE_3__ {int sge_tbl_dma; scalar_t__ sge_tbl; } ;
struct qedi_cmd {int sense_buffer_dma; scalar_t__ sense_buffer; TYPE_1__ io_tbl; } ;
struct iscsi_task {struct qedi_cmd* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;
struct TYPE_4__ {int dev; } ;


 int QEDI_ISCSI_MAX_BDS_PER_CMD ;
 int SCSI_SENSE_BUFFERSIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;

__attribute__((used)) static void qedi_destroy_cmd_pool(struct qedi_ctx *qedi,
      struct iscsi_session *session)
{
 int i;

 for (i = 0; i < session->cmds_max; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct qedi_cmd *cmd = task->dd_data;

  if (cmd->io_tbl.sge_tbl)
   dma_free_coherent(&qedi->pdev->dev,
       QEDI_ISCSI_MAX_BDS_PER_CMD *
       sizeof(struct scsi_sge),
       cmd->io_tbl.sge_tbl,
       cmd->io_tbl.sge_tbl_dma);

  if (cmd->sense_buffer)
   dma_free_coherent(&qedi->pdev->dev,
       SCSI_SENSE_BUFFERSIZE,
       cmd->sense_buffer,
       cmd->sense_buffer_dma);
 }
}
