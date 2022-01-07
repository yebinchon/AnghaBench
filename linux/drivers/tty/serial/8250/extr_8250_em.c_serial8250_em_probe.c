
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int up ;
struct TYPE_2__ {int flags; int serial_out; int serial_in; int iotype; int uartclk; struct serial8250_em_priv* private_data; int * dev; int type; int irq; int mapbase; } ;
struct uart_8250_port {int dl_write; int dl_read; TYPE_1__ port; } ;
struct serial8250_em_priv {int line; int sclk; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_UNKNOWN ;
 int PTR_ERR (int ) ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_FIXED_PORT ;
 int UPF_IOREMAP ;
 int UPIO_MEM32 ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int devm_clk_get (int *,char*) ;
 struct serial8250_em_priv* devm_kzalloc (int *,int,int ) ;
 int memset (struct uart_8250_port*,int ,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct serial8250_em_priv*) ;
 int serial8250_em_serial_dl_read ;
 int serial8250_em_serial_dl_write ;
 int serial8250_em_serial_in ;
 int serial8250_em_serial_out ;
 int serial8250_register_8250_port (struct uart_8250_port*) ;

__attribute__((used)) static int serial8250_em_probe(struct platform_device *pdev)
{
 struct resource *regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 struct resource *irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 struct serial8250_em_priv *priv;
 struct uart_8250_port up;
 int ret;

 if (!regs || !irq) {
  dev_err(&pdev->dev, "missing registers or irq\n");
  return -EINVAL;
 }

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->sclk = devm_clk_get(&pdev->dev, "sclk");
 if (IS_ERR(priv->sclk)) {
  dev_err(&pdev->dev, "unable to get clock\n");
  return PTR_ERR(priv->sclk);
 }

 memset(&up, 0, sizeof(up));
 up.port.mapbase = regs->start;
 up.port.irq = irq->start;
 up.port.type = PORT_UNKNOWN;
 up.port.flags = UPF_BOOT_AUTOCONF | UPF_FIXED_PORT | UPF_IOREMAP;
 up.port.dev = &pdev->dev;
 up.port.private_data = priv;

 clk_prepare_enable(priv->sclk);
 up.port.uartclk = clk_get_rate(priv->sclk);

 up.port.iotype = UPIO_MEM32;
 up.port.serial_in = serial8250_em_serial_in;
 up.port.serial_out = serial8250_em_serial_out;
 up.dl_read = serial8250_em_serial_dl_read;
 up.dl_write = serial8250_em_serial_dl_write;

 ret = serial8250_register_8250_port(&up);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to register 8250 port\n");
  clk_disable_unprepare(priv->sclk);
  return ret;
 }

 priv->line = ret;
 platform_set_drvdata(pdev, priv);
 return 0;
}
