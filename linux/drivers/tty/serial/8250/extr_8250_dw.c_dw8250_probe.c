
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int irq; int flags; int regshift; int uartclk; int fifosize; int * handle_irq; int serial_out; int serial_in; int iotype; TYPE_4__* private_data; int membase; int set_termios; int set_ldisc; struct device* dev; int type; int pm; int mapbase; int lock; } ;
struct uart_8250_port {TYPE_3__* dma; struct uart_port port; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int dst_maxburst; } ;
struct TYPE_5__ {int src_maxburst; } ;
struct TYPE_7__ {TYPE_2__ txconf; TYPE_1__ rxconf; int fn; } ;
struct TYPE_8__ {int line; TYPE_3__ dma; } ;
struct dw8250_data {void* clk; void* pclk; void* rst; TYPE_4__ data; int skip_autocfg; scalar_t__ uart_16550_compatible; int msr_mask_off; int msr_mask_on; int usr_reg; } ;


 int DW_UART_USR ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int IS_ERR_OR_NULL (void*) ;
 int PORT_8250 ;
 int PTR_ERR (void*) ;
 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_DSR ;
 int UART_MSR_RI ;
 int UART_MSR_TERI ;
 int UPF_FIXED_PORT ;
 int UPF_SHARE_IRQ ;
 int UPIO_MEM ;
 int UPIO_MEM32 ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,int) ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 int device_property_read_u32 (struct device*,char*,int*) ;
 void* devm_clk_get (struct device*,char*) ;
 int devm_ioremap (struct device*,int ,int ) ;
 struct dw8250_data* devm_kzalloc (struct device*,int,int ) ;
 void* devm_reset_control_get_optional_exclusive (struct device*,int *) ;
 int dw8250_do_pm ;
 int dw8250_fallback_dma_filter ;
 int * dw8250_handle_irq ;
 int dw8250_quirks (struct uart_port*,struct dw8250_data*) ;
 int dw8250_serial_in ;
 int dw8250_serial_in32 ;
 int dw8250_serial_out ;
 int dw8250_serial_out32 ;
 int dw8250_set_ldisc ;
 int dw8250_set_termios ;
 int dw8250_setup_port (struct uart_port*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dw8250_data*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int reset_control_assert (void*) ;
 int reset_control_deassert (void*) ;
 int resource_size (struct resource*) ;
 int serial8250_register_8250_port (struct uart_8250_port*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dw8250_probe(struct platform_device *pdev)
{
 struct uart_8250_port uart = {}, *up = &uart;
 struct resource *regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 int irq = platform_get_irq(pdev, 0);
 struct uart_port *p = &up->port;
 struct device *dev = &pdev->dev;
 struct dw8250_data *data;
 int err;
 u32 val;

 if (!regs) {
  dev_err(dev, "no registers defined\n");
  return -EINVAL;
 }

 if (irq < 0) {
  if (irq != -EPROBE_DEFER)
   dev_err(dev, "cannot get irq\n");
  return irq;
 }

 spin_lock_init(&p->lock);
 p->mapbase = regs->start;
 p->irq = irq;
 p->handle_irq = dw8250_handle_irq;
 p->pm = dw8250_do_pm;
 p->type = PORT_8250;
 p->flags = UPF_SHARE_IRQ | UPF_FIXED_PORT;
 p->dev = dev;
 p->iotype = UPIO_MEM;
 p->serial_in = dw8250_serial_in;
 p->serial_out = dw8250_serial_out;
 p->set_ldisc = dw8250_set_ldisc;
 p->set_termios = dw8250_set_termios;

 p->membase = devm_ioremap(dev, regs->start, resource_size(regs));
 if (!p->membase)
  return -ENOMEM;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->data.dma.fn = dw8250_fallback_dma_filter;
 data->usr_reg = DW_UART_USR;
 p->private_data = &data->data;

 data->uart_16550_compatible = device_property_read_bool(dev,
      "snps,uart-16550-compatible");

 err = device_property_read_u32(dev, "reg-shift", &val);
 if (!err)
  p->regshift = val;

 err = device_property_read_u32(dev, "reg-io-width", &val);
 if (!err && val == 4) {
  p->iotype = UPIO_MEM32;
  p->serial_in = dw8250_serial_in32;
  p->serial_out = dw8250_serial_out32;
 }

 if (device_property_read_bool(dev, "dcd-override")) {

  data->msr_mask_on |= UART_MSR_DCD;
  data->msr_mask_off |= UART_MSR_DDCD;
 }

 if (device_property_read_bool(dev, "dsr-override")) {

  data->msr_mask_on |= UART_MSR_DSR;
  data->msr_mask_off |= UART_MSR_DDSR;
 }

 if (device_property_read_bool(dev, "cts-override")) {

  data->msr_mask_on |= UART_MSR_CTS;
  data->msr_mask_off |= UART_MSR_DCTS;
 }

 if (device_property_read_bool(dev, "ri-override")) {

  data->msr_mask_off |= UART_MSR_RI;
  data->msr_mask_off |= UART_MSR_TERI;
 }


 device_property_read_u32(dev, "clock-frequency", &p->uartclk);


 data->clk = devm_clk_get(dev, "baudclk");
 if (IS_ERR(data->clk) && PTR_ERR(data->clk) != -EPROBE_DEFER)
  data->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(data->clk) && PTR_ERR(data->clk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;
 if (!IS_ERR_OR_NULL(data->clk)) {
  err = clk_prepare_enable(data->clk);
  if (err)
   dev_warn(dev, "could not enable optional baudclk: %d\n",
     err);
  else
   p->uartclk = clk_get_rate(data->clk);
 }


 if (!p->uartclk) {
  dev_err(dev, "clock rate not defined\n");
  err = -EINVAL;
  goto err_clk;
 }

 data->pclk = devm_clk_get(dev, "apb_pclk");
 if (IS_ERR(data->pclk) && PTR_ERR(data->pclk) == -EPROBE_DEFER) {
  err = -EPROBE_DEFER;
  goto err_clk;
 }
 if (!IS_ERR(data->pclk)) {
  err = clk_prepare_enable(data->pclk);
  if (err) {
   dev_err(dev, "could not enable apb_pclk\n");
   goto err_clk;
  }
 }

 data->rst = devm_reset_control_get_optional_exclusive(dev, ((void*)0));
 if (IS_ERR(data->rst)) {
  err = PTR_ERR(data->rst);
  goto err_pclk;
 }
 reset_control_deassert(data->rst);

 dw8250_quirks(p, data);


 if (data->uart_16550_compatible)
  p->handle_irq = ((void*)0);

 if (!data->skip_autocfg)
  dw8250_setup_port(p);


 if (p->fifosize) {
  data->data.dma.rxconf.src_maxburst = p->fifosize / 4;
  data->data.dma.txconf.dst_maxburst = p->fifosize / 4;
  up->dma = &data->data.dma;
 }

 data->data.line = serial8250_register_8250_port(up);
 if (data->data.line < 0) {
  err = data->data.line;
  goto err_reset;
 }

 platform_set_drvdata(pdev, data);

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);

 return 0;

err_reset:
 reset_control_assert(data->rst);

err_pclk:
 if (!IS_ERR(data->pclk))
  clk_disable_unprepare(data->pclk);

err_clk:
 if (!IS_ERR(data->clk))
  clk_disable_unprepare(data->clk);

 return err;
}
