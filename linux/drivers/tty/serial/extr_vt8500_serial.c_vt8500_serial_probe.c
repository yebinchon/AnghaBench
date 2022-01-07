
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fifosize; int line; int flags; int uartclk; TYPE_2__* dev; int * ops; int irq; int mapbase; int iotype; int type; int membase; } ;
struct vt8500_port {unsigned int vt8500_uart_flags; int clk_predivisor; TYPE_1__ uart; int name; int clk; } ;
struct resource {int start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
struct of_device_id {unsigned int* data; } ;
struct device_node {int dummy; } ;


 int DIV_ROUND_CLOSEST (int,int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_VT8500 ;
 int PTR_ERR (int ) ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 int VT8500_MAX_PORTS ;
 int VT8500_OVERSAMPLING_DIVISOR ;
 int VT8500_RECOMMENDED_CLK ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct vt8500_port* devm_kzalloc (TYPE_2__*,int,int ) ;
 int find_first_zero_bit (int ,int) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int of_clk_get (struct device_node*,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_2__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vt8500_port*) ;
 int snprintf (int ,int,char*,int) ;
 scalar_t__ test_and_set_bit (int,int ) ;
 int uart_add_one_port (int *,TYPE_1__*) ;
 int vt8500_ports_in_use ;
 int vt8500_uart_driver ;
 int vt8500_uart_pops ;
 struct vt8500_port** vt8500_uart_ports ;
 int wmt_dt_ids ;

__attribute__((used)) static int vt8500_serial_probe(struct platform_device *pdev)
{
 struct vt8500_port *vt8500_port;
 struct resource *mmres, *irqres;
 struct device_node *np = pdev->dev.of_node;
 const struct of_device_id *match;
 const unsigned int *flags;
 int ret;
 int port;

 match = of_match_device(wmt_dt_ids, &pdev->dev);
 if (!match)
  return -EINVAL;

 flags = match->data;

 mmres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irqres = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!mmres || !irqres)
  return -ENODEV;

 if (np) {
  port = of_alias_get_id(np, "serial");
  if (port >= VT8500_MAX_PORTS)
   port = -1;
 } else {
  port = -1;
 }

 if (port < 0) {

  port = find_first_zero_bit(vt8500_ports_in_use,
        VT8500_MAX_PORTS);
 }

 if (port >= VT8500_MAX_PORTS)
  return -ENODEV;


 if (test_and_set_bit(port, vt8500_ports_in_use)) {

  return -EBUSY;
 }

 vt8500_port = devm_kzalloc(&pdev->dev, sizeof(struct vt8500_port),
       GFP_KERNEL);
 if (!vt8500_port)
  return -ENOMEM;

 vt8500_port->uart.membase = devm_ioremap_resource(&pdev->dev, mmres);
 if (IS_ERR(vt8500_port->uart.membase))
  return PTR_ERR(vt8500_port->uart.membase);

 vt8500_port->clk = of_clk_get(pdev->dev.of_node, 0);
 if (IS_ERR(vt8500_port->clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return -EINVAL;
 }

 ret = clk_prepare_enable(vt8500_port->clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable clock\n");
  return ret;
 }

 vt8500_port->vt8500_uart_flags = *flags;
 vt8500_port->clk_predivisor = DIV_ROUND_CLOSEST(
     clk_get_rate(vt8500_port->clk),
     VT8500_RECOMMENDED_CLK
          );
 vt8500_port->uart.type = PORT_VT8500;
 vt8500_port->uart.iotype = UPIO_MEM;
 vt8500_port->uart.mapbase = mmres->start;
 vt8500_port->uart.irq = irqres->start;
 vt8500_port->uart.fifosize = 16;
 vt8500_port->uart.ops = &vt8500_uart_pops;
 vt8500_port->uart.line = port;
 vt8500_port->uart.dev = &pdev->dev;
 vt8500_port->uart.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;


 vt8500_port->uart.uartclk = 16 * clk_get_rate(vt8500_port->clk) /
     vt8500_port->clk_predivisor /
     VT8500_OVERSAMPLING_DIVISOR;

 snprintf(vt8500_port->name, sizeof(vt8500_port->name),
   "VT8500 UART%d", pdev->id);

 vt8500_uart_ports[port] = vt8500_port;

 uart_add_one_port(&vt8500_uart_driver, &vt8500_port->uart);

 platform_set_drvdata(pdev, vt8500_port);

 return 0;
}
