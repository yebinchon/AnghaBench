
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {int dummy; } ;


 int IRQIO_APB ;
 int ap_suspend_flag ;
 int ap_tasklet ;
 int inc_irq_stat (int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ap_interrupt_handler(struct airq_struct *airq, bool floating)
{
 inc_irq_stat(IRQIO_APB);
 if (!ap_suspend_flag)
  tasklet_schedule(&ap_tasklet);
}
