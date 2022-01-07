
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* fq_ctrl; } ;
struct TYPE_3__ {int dqrr; } ;
struct qm_mcc_initfq {TYPE_2__ fqd; void* we_mask; TYPE_1__ cb; } ;
struct hp_handler {scalar_t__ processor_id; struct qm_mcc_initfq tx; int fqid_tx; struct qm_mcc_initfq rx; int fqid_rx; } ;
typedef int opts ;


 int EIO ;
 int QMAN_FQ_FLAG_NO_MODIFY ;
 int QMAN_INITFQ_FLAG_LOCAL ;
 int QMAN_INITFQ_FLAG_SCHED ;
 int QM_FQCTRL_CTXASTASHING ;
 int QM_INITFQ_WE_CONTEXTA ;
 int QM_INITFQ_WE_FQCTRL ;
 int STASH_CTX_CL ;
 int STASH_DATA_CL ;
 void* cpu_to_be16 (int) ;
 int memset (struct qm_mcc_initfq*,int ,int) ;
 int normal_dqrr ;
 int pr_crit (char*) ;
 int qm_fqd_set_stashing (TYPE_2__*,int ,int ,int ) ;
 int qman_create_fq (int ,int ,struct qm_mcc_initfq*) ;
 int qman_init_fq (struct qm_mcc_initfq*,int,struct qm_mcc_initfq*) ;
 scalar_t__ smp_processor_id () ;
 int special_dqrr ;
 struct hp_handler* special_handler ;

__attribute__((used)) static int init_handler(void *h)
{
 struct qm_mcc_initfq opts;
 struct hp_handler *handler = h;
 int err;

 if (handler->processor_id != smp_processor_id()) {
  err = -EIO;
  goto failed;
 }

 memset(&handler->rx, 0, sizeof(handler->rx));
 if (handler == special_handler)
  handler->rx.cb.dqrr = special_dqrr;
 else
  handler->rx.cb.dqrr = normal_dqrr;
 err = qman_create_fq(handler->fqid_rx, 0, &handler->rx);
 if (err) {
  pr_crit("qman_create_fq(rx) failed");
  goto failed;
 }
 memset(&opts, 0, sizeof(opts));
 opts.we_mask = cpu_to_be16(QM_INITFQ_WE_FQCTRL |
       QM_INITFQ_WE_CONTEXTA);
 opts.fqd.fq_ctrl = cpu_to_be16(QM_FQCTRL_CTXASTASHING);
 qm_fqd_set_stashing(&opts.fqd, 0, STASH_DATA_CL, STASH_CTX_CL);
 err = qman_init_fq(&handler->rx, QMAN_INITFQ_FLAG_SCHED |
      QMAN_INITFQ_FLAG_LOCAL, &opts);
 if (err) {
  pr_crit("qman_init_fq(rx) failed");
  goto failed;
 }

 memset(&handler->tx, 0, sizeof(handler->tx));
 err = qman_create_fq(handler->fqid_tx, QMAN_FQ_FLAG_NO_MODIFY,
        &handler->tx);
 if (err) {
  pr_crit("qman_create_fq(tx) failed");
  goto failed;
 }

 return 0;
failed:
 return err;
}
