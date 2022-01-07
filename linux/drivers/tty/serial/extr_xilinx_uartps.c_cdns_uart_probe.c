
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct uart_port {int irq; TYPE_2__* dev; struct cdns_uart* private_data; int uartclk; int mapbase; int fifosize; int * ops; int flags; int iotype; int type; int lock; } ;
struct uart_driver {char* driver_name; int minor; int nr; TYPE_1__* tty_driver; struct console* cons; int major; int dev_name; int owner; } ;
struct resource {int start; } ;
struct TYPE_19__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct cdns_platform_data* data; } ;
struct console {int index; int flags; struct uart_driver* data; int setup; int device; int write; int name; } ;
struct TYPE_17__ {int notifier_call; } ;
struct cdns_uart {scalar_t__ id; struct uart_driver* cdns_uart_driver; void* pclk; void* uartclk; TYPE_15__ clk_rate_change_nb; int cts_override; struct uart_port* port; int quirks; } ;
struct cdns_platform_data {int quirks; } ;
struct TYPE_18__ {int name_base; int major; } ;


 int CDNS_UART_FIFO_SIZE ;
 int CDNS_UART_NAME ;
 int CDNS_UART_TTY_NAME ;
 int CON_ENABLED ;
 int CON_PRINTBUFFER ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ MAX_UART_INSTANCES ;
 int PORT_UNKNOWN ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int UART_AUTOSUSPEND_TIMEOUT ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM32 ;
 int bitmap ;
 int bitmap_lock ;
 scalar_t__ cdns_get_id (struct platform_device*) ;
 int cdns_uart_clk_notifier_cb ;
 int cdns_uart_console_setup ;
 int cdns_uart_console_write ;
 int cdns_uart_of_match ;
 int cdns_uart_ops ;
 int clear_bit (scalar_t__,int ) ;
 int clk_disable_unprepare (void*) ;
 int clk_get_rate (void*) ;
 scalar_t__ clk_notifier_register (void*,TYPE_15__*) ;
 int clk_notifier_unregister (void*,TYPE_15__*) ;
 int clk_prepare_enable (void*) ;
 struct uart_port* console_port ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_init_wakeup (TYPE_2__*,int) ;
 void* devm_clk_get (TYPE_2__*,char*) ;
 char* devm_kasprintf (TYPE_2__*,int ,char*,int ,int) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 int pm_runtime_disable (TYPE_2__*) ;
 int pm_runtime_dont_use_autosuspend (TYPE_2__*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_set_suspended (TYPE_2__*) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int spin_lock_init (int *) ;
 int strncpy (int ,int ,int) ;
 int uart_add_one_port (struct uart_driver*,struct uart_port*) ;
 int uart_console_device ;
 int uart_register_driver (struct uart_driver*) ;
 int uart_unregister_driver (struct uart_driver*) ;
 int uartps_major ;

__attribute__((used)) static int cdns_uart_probe(struct platform_device *pdev)
{
 int rc, irq;
 struct uart_port *port;
 struct resource *res;
 struct cdns_uart *cdns_uart_data;
 const struct of_device_id *match;
 struct uart_driver *cdns_uart_uart_driver;
 char *driver_name;




 cdns_uart_data = devm_kzalloc(&pdev->dev, sizeof(*cdns_uart_data),
   GFP_KERNEL);
 if (!cdns_uart_data)
  return -ENOMEM;
 port = devm_kzalloc(&pdev->dev, sizeof(*port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 cdns_uart_uart_driver = devm_kzalloc(&pdev->dev,
          sizeof(*cdns_uart_uart_driver),
          GFP_KERNEL);
 if (!cdns_uart_uart_driver)
  return -ENOMEM;

 cdns_uart_data->id = cdns_get_id(pdev);
 if (cdns_uart_data->id < 0)
  return cdns_uart_data->id;


 driver_name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s%d",
         CDNS_UART_NAME, cdns_uart_data->id);
 if (!driver_name) {
  rc = -ENOMEM;
  goto err_out_id;
 }

 cdns_uart_uart_driver->owner = THIS_MODULE;
 cdns_uart_uart_driver->driver_name = driver_name;
 cdns_uart_uart_driver->dev_name = CDNS_UART_TTY_NAME;
 cdns_uart_uart_driver->major = uartps_major;
 cdns_uart_uart_driver->minor = cdns_uart_data->id;
 cdns_uart_uart_driver->nr = 1;
 rc = uart_register_driver(cdns_uart_uart_driver);
 if (rc < 0) {
  dev_err(&pdev->dev, "Failed to register driver\n");
  goto err_out_id;
 }

 cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;






 cdns_uart_uart_driver->tty_driver->name_base = cdns_uart_data->id;

 match = of_match_node(cdns_uart_of_match, pdev->dev.of_node);
 if (match && match->data) {
  const struct cdns_platform_data *data = match->data;

  cdns_uart_data->quirks = data->quirks;
 }

 cdns_uart_data->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (PTR_ERR(cdns_uart_data->pclk) == -EPROBE_DEFER) {
  rc = PTR_ERR(cdns_uart_data->pclk);
  goto err_out_unregister_driver;
 }

 if (IS_ERR(cdns_uart_data->pclk)) {
  cdns_uart_data->pclk = devm_clk_get(&pdev->dev, "aper_clk");
  if (IS_ERR(cdns_uart_data->pclk)) {
   rc = PTR_ERR(cdns_uart_data->pclk);
   goto err_out_unregister_driver;
  }
  dev_err(&pdev->dev, "clock name 'aper_clk' is deprecated.\n");
 }

 cdns_uart_data->uartclk = devm_clk_get(&pdev->dev, "uart_clk");
 if (PTR_ERR(cdns_uart_data->uartclk) == -EPROBE_DEFER) {
  rc = PTR_ERR(cdns_uart_data->uartclk);
  goto err_out_unregister_driver;
 }

 if (IS_ERR(cdns_uart_data->uartclk)) {
  cdns_uart_data->uartclk = devm_clk_get(&pdev->dev, "ref_clk");
  if (IS_ERR(cdns_uart_data->uartclk)) {
   rc = PTR_ERR(cdns_uart_data->uartclk);
   goto err_out_unregister_driver;
  }
  dev_err(&pdev->dev, "clock name 'ref_clk' is deprecated.\n");
 }

 rc = clk_prepare_enable(cdns_uart_data->pclk);
 if (rc) {
  dev_err(&pdev->dev, "Unable to enable pclk clock.\n");
  goto err_out_unregister_driver;
 }
 rc = clk_prepare_enable(cdns_uart_data->uartclk);
 if (rc) {
  dev_err(&pdev->dev, "Unable to enable device clock.\n");
  goto err_out_clk_dis_pclk;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  rc = -ENODEV;
  goto err_out_clk_disable;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0) {
  rc = -ENXIO;
  goto err_out_clk_disable;
 }
 spin_lock_init(&port->lock);
 port->type = PORT_UNKNOWN;
 port->iotype = UPIO_MEM32;
 port->flags = UPF_BOOT_AUTOCONF;
 port->ops = &cdns_uart_ops;
 port->fifosize = CDNS_UART_FIFO_SIZE;






 port->mapbase = res->start;
 port->irq = irq;
 port->dev = &pdev->dev;
 port->uartclk = clk_get_rate(cdns_uart_data->uartclk);
 port->private_data = cdns_uart_data;
 cdns_uart_data->port = port;
 platform_set_drvdata(pdev, port);

 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, UART_AUTOSUSPEND_TIMEOUT);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);
 device_init_wakeup(port->dev, 1);
 rc = uart_add_one_port(cdns_uart_uart_driver, port);
 if (rc) {
  dev_err(&pdev->dev,
   "uart_add_one_port() failed; err=%i\n", rc);
  goto err_out_pm_disable;
 }
 uartps_major = cdns_uart_uart_driver->tty_driver->major;
 cdns_uart_data->cts_override = of_property_read_bool(pdev->dev.of_node,
            "cts-override");
 return 0;

err_out_pm_disable:
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);




err_out_clk_disable:
 clk_disable_unprepare(cdns_uart_data->uartclk);
err_out_clk_dis_pclk:
 clk_disable_unprepare(cdns_uart_data->pclk);
err_out_unregister_driver:
 uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
err_out_id:
 mutex_lock(&bitmap_lock);
 if (cdns_uart_data->id < MAX_UART_INSTANCES)
  clear_bit(cdns_uart_data->id, bitmap);
 mutex_unlock(&bitmap_lock);
 return rc;
}
