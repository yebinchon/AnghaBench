
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int intel_soc_dts_iosf_interrupt_handler (int ) ;
 int pr_debug (char*) ;
 int soc_dts ;

__attribute__((used)) static irqreturn_t soc_irq_thread_fn(int irq, void *dev_data)
{
 pr_debug("proc_thermal_interrupt\n");
 intel_soc_dts_iosf_interrupt_handler(soc_dts);

 return IRQ_HANDLED;
}
