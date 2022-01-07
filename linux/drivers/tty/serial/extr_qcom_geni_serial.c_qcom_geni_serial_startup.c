
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; int irq; int line; } ;
struct qcom_geni_serial_port {int name; int setup; } ;


 int IRQF_TRIGGER_HIGH ;
 int dev_err (int ,char*,int) ;
 int qcom_geni_serial_isr ;
 int qcom_geni_serial_port_setup (struct uart_port*) ;
 int request_irq (int ,int ,int ,int ,struct uart_port*) ;
 int scnprintf (int ,int,char*,char*,int ) ;
 struct qcom_geni_serial_port* to_dev_port (struct uart_port*,struct uart_port*) ;
 scalar_t__ uart_console (struct uart_port*) ;

__attribute__((used)) static int qcom_geni_serial_startup(struct uart_port *uport)
{
 int ret;
 struct qcom_geni_serial_port *port = to_dev_port(uport, uport);

 scnprintf(port->name, sizeof(port->name),
    "qcom_serial_%s%d",
  (uart_console(uport) ? "console" : "uart"), uport->line);

 if (!port->setup) {
  ret = qcom_geni_serial_port_setup(uport);
  if (ret)
   return ret;
 }

 ret = request_irq(uport->irq, qcom_geni_serial_isr, IRQF_TRIGGER_HIGH,
       port->name, uport);
 if (ret)
  dev_err(uport->dev, "Failed to get IRQ ret %d\n", ret);
 return ret;
}
