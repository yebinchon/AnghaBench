
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct doorbell_isr {int partition; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 int failover_subscribers ;

__attribute__((used)) static irqreturn_t fsl_hv_state_change_thread(int irq, void *data)
{
 struct doorbell_isr *dbisr = data;

 blocking_notifier_call_chain(&failover_subscribers, dbisr->partition,
         ((void*)0));

 return IRQ_HANDLED;
}
