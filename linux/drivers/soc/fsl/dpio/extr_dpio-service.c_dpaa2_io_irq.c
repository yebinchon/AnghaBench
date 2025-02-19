
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct qbman_swp {int dummy; } ;
struct dpaa2_io_notification_ctx {int (* cb ) (struct dpaa2_io_notification_ctx*) ;} ;
struct dpaa2_io {struct qbman_swp* swp; } ;
struct dpaa2_dq {int dummy; } ;
typedef int irqreturn_t ;


 int DPAA_POLL_MAX ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int pr_crit (char*) ;
 scalar_t__ qbman_result_SCN_ctx (struct dpaa2_dq const*) ;
 scalar_t__ qbman_result_is_SCN (struct dpaa2_dq const*) ;
 int qbman_swp_dqrr_consume (struct qbman_swp*,struct dpaa2_dq const*) ;
 struct dpaa2_dq* qbman_swp_dqrr_next (struct qbman_swp*) ;
 int qbman_swp_interrupt_clear_status (struct qbman_swp*,int ) ;
 int qbman_swp_interrupt_read_status (struct qbman_swp*) ;
 int qbman_swp_interrupt_set_inhibit (struct qbman_swp*,int ) ;
 int stub1 (struct dpaa2_io_notification_ctx*) ;

irqreturn_t dpaa2_io_irq(struct dpaa2_io *obj)
{
 const struct dpaa2_dq *dq;
 int max = 0;
 struct qbman_swp *swp;
 u32 status;

 swp = obj->swp;
 status = qbman_swp_interrupt_read_status(swp);
 if (!status)
  return IRQ_NONE;

 dq = qbman_swp_dqrr_next(swp);
 while (dq) {
  if (qbman_result_is_SCN(dq)) {
   struct dpaa2_io_notification_ctx *ctx;
   u64 q64;

   q64 = qbman_result_SCN_ctx(dq);
   ctx = (void *)(uintptr_t)q64;
   ctx->cb(ctx);
  } else {
   pr_crit("fsl-mc-dpio: Unrecognised/ignored DQRR entry\n");
  }
  qbman_swp_dqrr_consume(swp, dq);
  ++max;
  if (max > DPAA_POLL_MAX)
   goto done;
  dq = qbman_swp_dqrr_next(swp);
 }
done:
 qbman_swp_interrupt_clear_status(swp, status);
 qbman_swp_interrupt_set_inhibit(swp, 0);
 return IRQ_HANDLED;
}
