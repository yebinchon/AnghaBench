
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_fastpath {int sb_info; struct qedi_ctx* qedi; } ;
struct qedi_ctx {int dbg_ctx; } ;
typedef int irqreturn_t ;


 int IGU_INT_DISABLE ;
 int IGU_INT_ENABLE ;
 int IRQ_HANDLED ;
 int QEDI_INFO (int *,int ,char*) ;
 int QEDI_LOG_DISC ;
 int qed_sb_ack (int ,int ,int) ;
 int qed_sb_update_sb_idx (int ) ;
 scalar_t__ qedi_fp_has_work (struct qedi_fastpath*) ;
 int qedi_process_completions (struct qedi_fastpath*) ;
 int rmb () ;

__attribute__((used)) static irqreturn_t qedi_msix_handler(int irq, void *dev_id)
{
 struct qedi_fastpath *fp = dev_id;
 struct qedi_ctx *qedi = fp->qedi;
 bool wake_io_thread = 1;

 qed_sb_ack(fp->sb_info, IGU_INT_DISABLE, 0);

process_again:
 wake_io_thread = qedi_process_completions(fp);
 if (wake_io_thread) {
  QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_DISC,
     "process already running\n");
 }

 if (qedi_fp_has_work(fp) == 0)
  qed_sb_update_sb_idx(fp->sb_info);


 rmb();

 if (qedi_fp_has_work(fp) == 0)
  qed_sb_ack(fp->sb_info, IGU_INT_ENABLE, 1);
 else
  goto process_again;

 return IRQ_HANDLED;
}
