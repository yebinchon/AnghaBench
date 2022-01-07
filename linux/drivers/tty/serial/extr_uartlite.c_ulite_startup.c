
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uartlite_data {int clk; } ;
struct uart_port {int irq; int dev; struct uartlite_data* private_data; } ;


 int IRQF_SHARED ;
 int IRQF_TRIGGER_RISING ;
 int ULITE_CONTROL ;
 int ULITE_CONTROL_IE ;
 int ULITE_CONTROL_RST_RX ;
 int ULITE_CONTROL_RST_TX ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 int request_irq (int ,int ,int,char*,struct uart_port*) ;
 int uart_out32 (int,int ,struct uart_port*) ;
 int ulite_isr ;

__attribute__((used)) static int ulite_startup(struct uart_port *port)
{
 struct uartlite_data *pdata = port->private_data;
 int ret;

 ret = clk_enable(pdata->clk);
 if (ret) {
  dev_err(port->dev, "Failed to enable clock\n");
  return ret;
 }

 ret = request_irq(port->irq, ulite_isr, IRQF_SHARED | IRQF_TRIGGER_RISING,
     "uartlite", port);
 if (ret)
  return ret;

 uart_out32(ULITE_CONTROL_RST_RX | ULITE_CONTROL_RST_TX,
  ULITE_CONTROL, port);
 uart_out32(ULITE_CONTROL_IE, ULITE_CONTROL, port);

 return 0;
}
