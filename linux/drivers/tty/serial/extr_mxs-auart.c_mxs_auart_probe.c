
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct platform_device {size_t id; int dev; TYPE_1__* id_entry; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_4__ {size_t line; int irq; int type; int uartclk; int fifosize; int iotype; int * ops; int membase; int mapbase; int * dev; } ;
struct mxs_auart_port {int clk_ahb; int clk; TYPE_2__ port; scalar_t__ mctrl_prev; int devtype; int * dev; } ;
struct TYPE_3__ {int driver_data; } ;


 size_t ARRAY_SIZE (struct mxs_auart_port**) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int MXS_AUART_FIFO_SIZE ;
 int PORT_IMX ;
 int REG_VERSION ;
 int UPIO_MEM ;
 int auart_driver ;
 struct mxs_auart_port** auart_port ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 int dev_name (int *) ;
 struct mxs_auart_port* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct mxs_auart_port*) ;
 int ioremap (int ,int ) ;
 scalar_t__ is_asm9260_auart (struct mxs_auart_port*) ;
 int mxs_auart_dt_ids ;
 int mxs_auart_free_gpio_irq (struct mxs_auart_port*) ;
 int mxs_auart_init_gpios (struct mxs_auart_port*,int *) ;
 int mxs_auart_irq_handle ;
 int mxs_auart_ops ;
 int mxs_auart_request_gpio_irq (struct mxs_auart_port*) ;
 int mxs_auart_reset_deassert (struct mxs_auart_port*) ;
 int mxs_get_clks (struct mxs_auart_port*,struct platform_device*) ;
 int mxs_init_regs (struct mxs_auart_port*) ;
 int mxs_read (struct mxs_auart_port*,int ) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mxs_auart_port*) ;
 int resource_size (struct resource*) ;
 int serial_mxs_probe_dt (struct mxs_auart_port*,struct platform_device*) ;
 int uart_add_one_port (int *,TYPE_2__*) ;

__attribute__((used)) static int mxs_auart_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id =
   of_match_device(mxs_auart_dt_ids, &pdev->dev);
 struct mxs_auart_port *s;
 u32 version;
 int ret, irq;
 struct resource *r;

 s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
 if (!s)
  return -ENOMEM;

 s->port.dev = &pdev->dev;
 s->dev = &pdev->dev;

 ret = serial_mxs_probe_dt(s, pdev);
 if (ret > 0)
  s->port.line = pdev->id < 0 ? 0 : pdev->id;
 else if (ret < 0)
  return ret;
 if (s->port.line >= ARRAY_SIZE(auart_port)) {
  dev_err(&pdev->dev, "serial%d out of range\n", s->port.line);
  return -EINVAL;
 }

 if (of_id) {
  pdev->id_entry = of_id->data;
  s->devtype = pdev->id_entry->driver_data;
 }

 ret = mxs_get_clks(s, pdev);
 if (ret)
  return ret;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  ret = -ENXIO;
  goto out_disable_clks;
 }

 s->port.mapbase = r->start;
 s->port.membase = ioremap(r->start, resource_size(r));
 if (!s->port.membase) {
  ret = -ENOMEM;
  goto out_disable_clks;
 }
 s->port.ops = &mxs_auart_ops;
 s->port.iotype = UPIO_MEM;
 s->port.fifosize = MXS_AUART_FIFO_SIZE;
 s->port.uartclk = clk_get_rate(s->clk);
 s->port.type = PORT_IMX;

 mxs_init_regs(s);

 s->mctrl_prev = 0;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto out_disable_clks;
 }

 s->port.irq = irq;
 ret = devm_request_irq(&pdev->dev, irq, mxs_auart_irq_handle, 0,
          dev_name(&pdev->dev), s);
 if (ret)
  goto out_disable_clks;

 platform_set_drvdata(pdev, s);

 ret = mxs_auart_init_gpios(s, &pdev->dev);
 if (ret) {
  dev_err(&pdev->dev, "Failed to initialize GPIOs.\n");
  goto out_disable_clks;
 }




 ret = mxs_auart_request_gpio_irq(s);
 if (ret)
  goto out_disable_clks;

 auart_port[s->port.line] = s;

 mxs_auart_reset_deassert(s);

 ret = uart_add_one_port(&auart_driver, &s->port);
 if (ret)
  goto out_free_qpio_irq;


 if (is_asm9260_auart(s)) {
  dev_info(&pdev->dev, "Found APPUART ASM9260\n");
 } else {
  version = mxs_read(s, REG_VERSION);
  dev_info(&pdev->dev, "Found APPUART %d.%d.%d\n",
    (version >> 24) & 0xff,
    (version >> 16) & 0xff, version & 0xffff);
 }

 return 0;

out_free_qpio_irq:
 mxs_auart_free_gpio_irq(s);
 auart_port[pdev->id] = ((void*)0);

out_disable_clks:
 if (is_asm9260_auart(s)) {
  clk_disable_unprepare(s->clk);
  clk_disable_unprepare(s->clk_ahb);
 }
 return ret;
}
