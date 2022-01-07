
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sge {int dummy; } ;
struct qedi_io_bdt {scalar_t__ sge_valid; int sge_tbl; int sge_tbl_dma; } ;
struct qedi_ctx {TYPE_1__* pdev; } ;
struct qedi_cmd {struct qedi_io_bdt io_tbl; } ;
struct iscsi_session {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int QEDI_ISCSI_MAX_BDS_PER_CMD ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int iscsi_session_printk (int ,struct iscsi_session*,char*) ;

__attribute__((used)) static int qedi_alloc_sget(struct qedi_ctx *qedi, struct iscsi_session *session,
      struct qedi_cmd *cmd)
{
 struct qedi_io_bdt *io = &cmd->io_tbl;
 struct scsi_sge *sge;

 io->sge_tbl = dma_alloc_coherent(&qedi->pdev->dev,
      QEDI_ISCSI_MAX_BDS_PER_CMD *
      sizeof(*sge),
      &io->sge_tbl_dma, GFP_KERNEL);
 if (!io->sge_tbl) {
  iscsi_session_printk(KERN_ERR, session,
         "Could not allocate BD table.\n");
  return -ENOMEM;
 }

 io->sge_valid = 0;
 return 0;
}
