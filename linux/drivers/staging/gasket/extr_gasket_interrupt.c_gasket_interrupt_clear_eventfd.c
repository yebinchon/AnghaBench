
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_interrupt_data {int num_interrupts; int ** eventfd_ctxs; } ;


 int EINVAL ;

int gasket_interrupt_clear_eventfd(struct gasket_interrupt_data *interrupt_data,
       int interrupt)
{
 if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
  return -EINVAL;

 interrupt_data->eventfd_ctxs[interrupt] = ((void*)0);
 return 0;
}
