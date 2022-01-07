
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int isr_count; int last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc_stats; } ;
struct fnic {int * intr; TYPE_2__ fnic_stats; int legacy_pba; } ;
typedef int irqreturn_t ;


 int FNIC_INTX_ERR ;
 int FNIC_INTX_NOTIFY ;
 int FNIC_INTX_WQ_RQ_COPYWQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int atomic64_inc (int *) ;
 int fnic_handle_link_event (struct fnic*) ;
 int fnic_log_q_error (struct fnic*) ;
 scalar_t__ fnic_rq_cmpl_handler (struct fnic*,int) ;
 scalar_t__ fnic_wq_cmpl_handler (struct fnic*,int) ;
 scalar_t__ fnic_wq_copy_cmpl_handler (struct fnic*,int ) ;
 int io_completions ;
 int jiffies ;
 int vnic_intr_legacy_pba (int ) ;
 int vnic_intr_return_all_credits (int *) ;
 int vnic_intr_return_credits (int *,unsigned long,int,int) ;

__attribute__((used)) static irqreturn_t fnic_isr_legacy(int irq, void *data)
{
 struct fnic *fnic = data;
 u32 pba;
 unsigned long work_done = 0;

 pba = vnic_intr_legacy_pba(fnic->legacy_pba);
 if (!pba)
  return IRQ_NONE;

 fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
 atomic64_inc(&fnic->fnic_stats.misc_stats.isr_count);

 if (pba & (1 << FNIC_INTX_NOTIFY)) {
  vnic_intr_return_all_credits(&fnic->intr[FNIC_INTX_NOTIFY]);
  fnic_handle_link_event(fnic);
 }

 if (pba & (1 << FNIC_INTX_ERR)) {
  vnic_intr_return_all_credits(&fnic->intr[FNIC_INTX_ERR]);
  fnic_log_q_error(fnic);
 }

 if (pba & (1 << FNIC_INTX_WQ_RQ_COPYWQ)) {
  work_done += fnic_wq_copy_cmpl_handler(fnic, io_completions);
  work_done += fnic_wq_cmpl_handler(fnic, -1);
  work_done += fnic_rq_cmpl_handler(fnic, -1);

  vnic_intr_return_credits(&fnic->intr[FNIC_INTX_WQ_RQ_COPYWQ],
      work_done,
      1 ,
      1 );
 }

 return IRQ_HANDLED;
}
