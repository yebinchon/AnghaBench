
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {unsigned int id; int dev; } ;
struct TYPE_2__ {int irq; int fifosize; unsigned int line; int flags; int * ops; int iotype; int type; int mapbase; int * dev; } ;
struct efm32_uart_pdata {int dummy; } ;
struct efm32_uart_port {int txirq; TYPE_1__ port; struct efm32_uart_pdata pdata; } ;


 unsigned int ARRAY_SIZE (struct efm32_uart_port**) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int PORT_EFMUART ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM32 ;
 int dev_dbg (int *,char*,...) ;
 struct efm32_uart_pdata* dev_get_platdata (int *) ;
 int efm32_uart_pops ;
 struct efm32_uart_port** efm32_uart_ports ;
 int efm32_uart_probe_dt (struct platform_device*,struct efm32_uart_port*) ;
 int efm32_uart_reg ;
 int kfree (struct efm32_uart_port*) ;
 struct efm32_uart_port* kzalloc (int,int ) ;
 int platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct efm32_uart_port*) ;
 int resource_size (struct resource*) ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int efm32_uart_probe(struct platform_device *pdev)
{
 struct efm32_uart_port *efm_port;
 struct resource *res;
 unsigned int line;
 int ret;

 efm_port = kzalloc(sizeof(*efm_port), GFP_KERNEL);
 if (!efm_port) {
  dev_dbg(&pdev->dev, "failed to allocate private data\n");
  return -ENOMEM;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  ret = -ENODEV;
  dev_dbg(&pdev->dev, "failed to determine base address\n");
  goto err_get_base;
 }

 if (resource_size(res) < 60) {
  ret = -EINVAL;
  dev_dbg(&pdev->dev, "memory resource too small\n");
  goto err_too_small;
 }

 ret = platform_get_irq(pdev, 0);
 if (ret <= 0) {
  dev_dbg(&pdev->dev, "failed to get rx irq\n");
  goto err_get_rxirq;
 }

 efm_port->port.irq = ret;

 ret = platform_get_irq(pdev, 1);
 if (ret <= 0)
  ret = efm_port->port.irq + 1;

 efm_port->txirq = ret;

 efm_port->port.dev = &pdev->dev;
 efm_port->port.mapbase = res->start;
 efm_port->port.type = PORT_EFMUART;
 efm_port->port.iotype = UPIO_MEM32;
 efm_port->port.fifosize = 2;
 efm_port->port.ops = &efm32_uart_pops;
 efm_port->port.flags = UPF_BOOT_AUTOCONF;

 ret = efm32_uart_probe_dt(pdev, efm_port);
 if (ret > 0) {

  const struct efm32_uart_pdata *pdata = dev_get_platdata(&pdev->dev);

  efm_port->port.line = pdev->id;

  if (pdata)
   efm_port->pdata = *pdata;
 } else if (ret < 0)
  goto err_probe_dt;

 line = efm_port->port.line;

 if (line >= 0 && line < ARRAY_SIZE(efm32_uart_ports))
  efm32_uart_ports[line] = efm_port;

 ret = uart_add_one_port(&efm32_uart_reg, &efm_port->port);
 if (ret) {
  dev_dbg(&pdev->dev, "failed to add port: %d\n", ret);

  if (line >= 0 && line < ARRAY_SIZE(efm32_uart_ports))
   efm32_uart_ports[line] = ((void*)0);
err_probe_dt:
err_get_rxirq:
err_too_small:
err_get_base:
  kfree(efm_port);
 } else {
  platform_set_drvdata(pdev, efm_port);
  dev_dbg(&pdev->dev, "\\o/\n");
 }

 return ret;
}
