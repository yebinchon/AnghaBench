
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int isr_count; int last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc_stats; } ;
struct fnic {int * intr; TYPE_2__ fnic_stats; } ;
typedef int irqreturn_t ;


 size_t FNIC_MSIX_WQ_COPY ;
 int IRQ_HANDLED ;
 int atomic64_inc (int *) ;
 unsigned long fnic_wq_copy_cmpl_handler (struct fnic*,int ) ;
 int io_completions ;
 int jiffies ;
 int vnic_intr_return_credits (int *,unsigned long,int,int) ;

__attribute__((used)) static irqreturn_t fnic_isr_msix_wq_copy(int irq, void *data)
{
 struct fnic *fnic = data;
 unsigned long wq_copy_work_done = 0;

 fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
 atomic64_inc(&fnic->fnic_stats.misc_stats.isr_count);

 wq_copy_work_done = fnic_wq_copy_cmpl_handler(fnic, io_completions);
 vnic_intr_return_credits(&fnic->intr[FNIC_MSIX_WQ_COPY],
     wq_copy_work_done,
     1 ,
     1 );
 return IRQ_HANDLED;
}
