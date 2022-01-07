
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_fastpath {int sb_info; } ;
typedef int irqreturn_t ;


 int IGU_INT_DISABLE ;
 int IGU_INT_ENABLE ;
 int IRQ_HANDLED ;
 int QEDF_ERR (int *,char*) ;
 int qed_sb_ack (int ,int ,int) ;
 int qed_sb_update_sb_idx (int ) ;
 scalar_t__ qedf_fp_has_work (struct qedf_fastpath*) ;
 int qedf_process_completions (struct qedf_fastpath*) ;
 int rmb () ;

__attribute__((used)) static irqreturn_t qedf_msix_handler(int irq, void *dev_id)
{
 struct qedf_fastpath *fp = dev_id;

 if (!fp) {
  QEDF_ERR(((void*)0), "fp is null.\n");
  return IRQ_HANDLED;
 }
 if (!fp->sb_info) {
  QEDF_ERR(((void*)0), "fp->sb_info in null.");
  return IRQ_HANDLED;
 }





 qed_sb_ack(fp->sb_info, IGU_INT_DISABLE, 0 );

 while (1) {
  qedf_process_completions(fp);

  if (qedf_fp_has_work(fp) == 0) {

   qed_sb_update_sb_idx(fp->sb_info);


   rmb();

   if (qedf_fp_has_work(fp) == 0) {

    qed_sb_ack(fp->sb_info, IGU_INT_ENABLE, 1);
    return IRQ_HANDLED;
   }
  }
 }


 return IRQ_HANDLED;
}
