
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ack_isr_cnt; int last_isr_time; } ;
struct TYPE_4__ {TYPE_1__ misc; } ;
struct snic {int * intr; TYPE_2__ s_stats; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 size_t SNIC_MSIX_WQ ;
 int atomic64_inc (int *) ;
 int jiffies ;
 unsigned long snic_wq_cmpl_handler (struct snic*,int) ;
 int svnic_intr_return_credits (int *,unsigned long,int,int) ;

__attribute__((used)) static irqreturn_t
snic_isr_msix_wq(int irq, void *data)
{
 struct snic *snic = data;
 unsigned long wq_work_done = 0;

 snic->s_stats.misc.last_isr_time = jiffies;
 atomic64_inc(&snic->s_stats.misc.ack_isr_cnt);

 wq_work_done = snic_wq_cmpl_handler(snic, -1);
 svnic_intr_return_credits(&snic->intr[SNIC_MSIX_WQ],
      wq_work_done,
      1 ,
      1 );

 return IRQ_HANDLED;
}
