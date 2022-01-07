
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errnotify_isr_cnt; int last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {int * intr; TYPE_2__ s_stats; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 size_t SNIC_MSIX_ERR_NOTIFY ;
 int atomic64_inc (int *) ;
 int jiffies ;
 int snic_handle_link_event (struct snic*) ;
 int snic_log_q_error (struct snic*) ;
 int svnic_intr_return_all_credits (int *) ;

__attribute__((used)) static irqreturn_t
snic_isr_msix_err_notify(int irq, void *data)
{
 struct snic *snic = data;

 snic->s_stats.misc.last_isr_time = jiffies;
 atomic64_inc(&snic->s_stats.misc.errnotify_isr_cnt);

 svnic_intr_return_all_credits(&snic->intr[SNIC_MSIX_ERR_NOTIFY]);
 snic_log_q_error(snic);


 snic_handle_link_event(snic);

 return IRQ_HANDLED;
}
