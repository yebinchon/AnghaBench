
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedi_ctx {TYPE_1__* pdev; } ;
struct qedi_cmd {int sense_buffer; int sense_buffer_dma; int hdr; } ;
struct iscsi_task {int hdr_max; int * hdr; struct qedi_cmd* dd_data; } ;
struct iscsi_session {int cmds_max; struct iscsi_task** cmds; } ;
struct iscsi_hdr {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 scalar_t__ qedi_alloc_sget (struct qedi_ctx*,struct iscsi_session*,struct qedi_cmd*) ;
 int qedi_destroy_cmd_pool (struct qedi_ctx*,struct iscsi_session*) ;

__attribute__((used)) static int qedi_setup_cmd_pool(struct qedi_ctx *qedi,
          struct iscsi_session *session)
{
 int i;

 for (i = 0; i < session->cmds_max; i++) {
  struct iscsi_task *task = session->cmds[i];
  struct qedi_cmd *cmd = task->dd_data;

  task->hdr = &cmd->hdr;
  task->hdr_max = sizeof(struct iscsi_hdr);

  if (qedi_alloc_sget(qedi, session, cmd))
   goto free_sgets;

  cmd->sense_buffer = dma_alloc_coherent(&qedi->pdev->dev,
             SCSI_SENSE_BUFFERSIZE,
             &cmd->sense_buffer_dma,
             GFP_KERNEL);
  if (!cmd->sense_buffer)
   goto free_sgets;
 }

 return 0;

free_sgets:
 qedi_destroy_cmd_pool(qedi, session);
 return -ENOMEM;
}
