
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


 size_t FNIC_MSIX_ERR_NOTIFY ;
 int IRQ_HANDLED ;
 int atomic64_inc (int *) ;
 int fnic_handle_link_event (struct fnic*) ;
 int fnic_log_q_error (struct fnic*) ;
 int jiffies ;
 int vnic_intr_return_all_credits (int *) ;

__attribute__((used)) static irqreturn_t fnic_isr_msix_err_notify(int irq, void *data)
{
 struct fnic *fnic = data;

 fnic->fnic_stats.misc_stats.last_isr_time = jiffies;
 atomic64_inc(&fnic->fnic_stats.misc_stats.isr_count);

 vnic_intr_return_all_credits(&fnic->intr[FNIC_MSIX_ERR_NOTIFY]);
 fnic_log_q_error(fnic);
 fnic_handle_link_event(fnic);

 return IRQ_HANDLED;
}
