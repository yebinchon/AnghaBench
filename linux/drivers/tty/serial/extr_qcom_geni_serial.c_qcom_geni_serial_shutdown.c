
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; int irq; int cons; } ;


 int console_stop (int ) ;
 int free_irq (int ,struct uart_port*) ;
 int qcom_geni_serial_stop_rx (struct uart_port*) ;
 int qcom_geni_serial_stop_tx (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_console (struct uart_port*) ;

__attribute__((used)) static void qcom_geni_serial_shutdown(struct uart_port *uport)
{
 unsigned long flags;


 if (uart_console(uport))
  console_stop(uport->cons);

 free_irq(uport->irq, uport);
 spin_lock_irqsave(&uport->lock, flags);
 qcom_geni_serial_stop_tx(uport);
 qcom_geni_serial_stop_rx(uport);
 spin_unlock_irqrestore(&uport->lock, flags);
}
