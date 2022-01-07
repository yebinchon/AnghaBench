
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int sci_controller_error_handler (struct isci_host*) ;
 scalar_t__ sci_controller_error_isr (struct isci_host*) ;

irqreturn_t isci_error_isr(int vec, void *data)
{
 struct isci_host *ihost = data;

 if (sci_controller_error_isr(ihost))
  sci_controller_error_handler(ihost);

 return IRQ_HANDLED;
}
