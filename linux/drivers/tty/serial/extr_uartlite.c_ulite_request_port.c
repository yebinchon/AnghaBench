
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uartlite_data {int * reg_ops; } ;
struct uart_port {scalar_t__ mapbase; int dev; int membase; struct uartlite_data* private_data; } ;


 int EBUSY ;
 int ULITE_CONTROL ;
 int ULITE_CONTROL_RST_TX ;
 int ULITE_REGION ;
 int ULITE_STATUS ;
 int ULITE_STATUS_TXEMPTY ;
 int dev_err (int ,char*) ;
 int ioremap (scalar_t__,int ) ;
 int pr_debug (char*,struct uart_port*,unsigned long long) ;
 int release_mem_region (scalar_t__,int ) ;
 int request_mem_region (scalar_t__,int ,char*) ;
 int uart_in32 (int ,struct uart_port*) ;
 int uart_out32 (int ,int ,struct uart_port*) ;
 int uartlite_be ;
 int uartlite_le ;

__attribute__((used)) static int ulite_request_port(struct uart_port *port)
{
 struct uartlite_data *pdata = port->private_data;
 int ret;

 pr_debug("ulite console: port=%p; port->mapbase=%llx\n",
   port, (unsigned long long) port->mapbase);

 if (!request_mem_region(port->mapbase, ULITE_REGION, "uartlite")) {
  dev_err(port->dev, "Memory region busy\n");
  return -EBUSY;
 }

 port->membase = ioremap(port->mapbase, ULITE_REGION);
 if (!port->membase) {
  dev_err(port->dev, "Unable to map registers\n");
  release_mem_region(port->mapbase, ULITE_REGION);
  return -EBUSY;
 }

 pdata->reg_ops = &uartlite_be;
 ret = uart_in32(ULITE_CONTROL, port);
 uart_out32(ULITE_CONTROL_RST_TX, ULITE_CONTROL, port);
 ret = uart_in32(ULITE_STATUS, port);

 if ((ret & ULITE_STATUS_TXEMPTY) != ULITE_STATUS_TXEMPTY)
  pdata->reg_ops = &uartlite_le;

 return 0;
}
