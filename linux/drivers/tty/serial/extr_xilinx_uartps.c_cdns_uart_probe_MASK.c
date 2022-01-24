#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct uart_port {int irq; TYPE_2__* dev; struct cdns_uart* private_data; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  fifosize; int /*<<< orphan*/ * ops; int /*<<< orphan*/  flags; int /*<<< orphan*/  iotype; int /*<<< orphan*/  type; int /*<<< orphan*/  lock; } ;
struct uart_driver {char* driver_name; int minor; int nr; TYPE_1__* tty_driver; struct console* cons; int /*<<< orphan*/  major; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  owner; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_19__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {struct cdns_platform_data* data; } ;
struct console {int index; int flags; struct uart_driver* data; int /*<<< orphan*/  setup; int /*<<< orphan*/  device; int /*<<< orphan*/  write; int /*<<< orphan*/  name; } ;
struct TYPE_17__ {int /*<<< orphan*/  notifier_call; } ;
struct cdns_uart {scalar_t__ id; struct uart_driver* cdns_uart_driver; void* pclk; void* uartclk; TYPE_15__ clk_rate_change_nb; int /*<<< orphan*/  cts_override; struct uart_port* port; int /*<<< orphan*/  quirks; } ;
struct cdns_platform_data {int /*<<< orphan*/  quirks; } ;
struct TYPE_18__ {int name_base; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_UART_FIFO_SIZE ; 
 int /*<<< orphan*/  CDNS_UART_NAME ; 
 int /*<<< orphan*/  CDNS_UART_TTY_NAME ; 
 int CON_ENABLED ; 
 int CON_PRINTBUFFER ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ MAX_UART_INSTANCES ; 
 int /*<<< orphan*/  PORT_UNKNOWN ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  UART_AUTOSUSPEND_TIMEOUT ; 
 int /*<<< orphan*/  UPF_BOOT_AUTOCONF ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  bitmap ; 
 int /*<<< orphan*/  bitmap_lock ; 
 scalar_t__ FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  cdns_uart_clk_notifier_cb ; 
 int /*<<< orphan*/  cdns_uart_console_setup ; 
 int /*<<< orphan*/  cdns_uart_console_write ; 
 int /*<<< orphan*/  cdns_uart_of_match ; 
 int /*<<< orphan*/  cdns_uart_ops ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_15__*) ; 
 int FUNC8 (void*) ; 
 struct uart_port* console_port ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 void* FUNC12 (TYPE_2__*,char*) ; 
 char* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 void* FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC31 (struct uart_driver*,struct uart_port*) ; 
 int /*<<< orphan*/  uart_console_device ; 
 int FUNC32 (struct uart_driver*) ; 
 int /*<<< orphan*/  FUNC33 (struct uart_driver*) ; 
 int /*<<< orphan*/  uartps_major ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	int rc, irq;
	struct uart_port *port;
	struct resource *res;
	struct cdns_uart *cdns_uart_data;
	const struct of_device_id *match;
	struct uart_driver *cdns_uart_uart_driver;
	char *driver_name;
#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
	struct console *cdns_uart_console;
#endif

	cdns_uart_data = FUNC14(&pdev->dev, sizeof(*cdns_uart_data),
			GFP_KERNEL);
	if (!cdns_uart_data)
		return -ENOMEM;
	port = FUNC14(&pdev->dev, sizeof(*port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	cdns_uart_uart_driver = FUNC14(&pdev->dev,
					     sizeof(*cdns_uart_uart_driver),
					     GFP_KERNEL);
	if (!cdns_uart_uart_driver)
		return -ENOMEM;

	cdns_uart_data->id = FUNC2(pdev);
	if (cdns_uart_data->id < 0)
		return cdns_uart_data->id;

	/* There is a need to use unique driver name */
	driver_name = FUNC13(&pdev->dev, GFP_KERNEL, "%s%d",
				     CDNS_UART_NAME, cdns_uart_data->id);
	if (!driver_name) {
		rc = -ENOMEM;
		goto err_out_id;
	}

	cdns_uart_uart_driver->owner = THIS_MODULE;
	cdns_uart_uart_driver->driver_name = driver_name;
	cdns_uart_uart_driver->dev_name	= CDNS_UART_TTY_NAME;
	cdns_uart_uart_driver->major = uartps_major;
	cdns_uart_uart_driver->minor = cdns_uart_data->id;
	cdns_uart_uart_driver->nr = 1;

#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
	cdns_uart_console = devm_kzalloc(&pdev->dev, sizeof(*cdns_uart_console),
					 GFP_KERNEL);
	if (!cdns_uart_console) {
		rc = -ENOMEM;
		goto err_out_id;
	}

	strncpy(cdns_uart_console->name, CDNS_UART_TTY_NAME,
		sizeof(cdns_uart_console->name));
	cdns_uart_console->index = cdns_uart_data->id;
	cdns_uart_console->write = cdns_uart_console_write;
	cdns_uart_console->device = uart_console_device;
	cdns_uart_console->setup = cdns_uart_console_setup;
	cdns_uart_console->flags = CON_PRINTBUFFER;
	cdns_uart_console->data = cdns_uart_uart_driver;
	cdns_uart_uart_driver->cons = cdns_uart_console;
#endif

	rc = FUNC32(cdns_uart_uart_driver);
	if (rc < 0) {
		FUNC9(&pdev->dev, "Failed to register driver\n");
		goto err_out_id;
	}

	cdns_uart_data->cdns_uart_driver = cdns_uart_uart_driver;

	/*
	 * Setting up proper name_base needs to be done after uart
	 * registration because tty_driver structure is not filled.
	 * name_base is 0 by default.
	 */
	cdns_uart_uart_driver->tty_driver->name_base = cdns_uart_data->id;

	match = FUNC17(cdns_uart_of_match, pdev->dev.of_node);
	if (match && match->data) {
		const struct cdns_platform_data *data = match->data;

		cdns_uart_data->quirks = data->quirks;
	}

	cdns_uart_data->pclk = FUNC12(&pdev->dev, "pclk");
	if (FUNC1(cdns_uart_data->pclk) == -EPROBE_DEFER) {
		rc = FUNC1(cdns_uart_data->pclk);
		goto err_out_unregister_driver;
	}

	if (FUNC0(cdns_uart_data->pclk)) {
		cdns_uart_data->pclk = FUNC12(&pdev->dev, "aper_clk");
		if (FUNC0(cdns_uart_data->pclk)) {
			rc = FUNC1(cdns_uart_data->pclk);
			goto err_out_unregister_driver;
		}
		FUNC9(&pdev->dev, "clock name 'aper_clk' is deprecated.\n");
	}

	cdns_uart_data->uartclk = FUNC12(&pdev->dev, "uart_clk");
	if (FUNC1(cdns_uart_data->uartclk) == -EPROBE_DEFER) {
		rc = FUNC1(cdns_uart_data->uartclk);
		goto err_out_unregister_driver;
	}

	if (FUNC0(cdns_uart_data->uartclk)) {
		cdns_uart_data->uartclk = FUNC12(&pdev->dev, "ref_clk");
		if (FUNC0(cdns_uart_data->uartclk)) {
			rc = FUNC1(cdns_uart_data->uartclk);
			goto err_out_unregister_driver;
		}
		FUNC9(&pdev->dev, "clock name 'ref_clk' is deprecated.\n");
	}

	rc = FUNC8(cdns_uart_data->pclk);
	if (rc) {
		FUNC9(&pdev->dev, "Unable to enable pclk clock.\n");
		goto err_out_unregister_driver;
	}
	rc = FUNC8(cdns_uart_data->uartclk);
	if (rc) {
		FUNC9(&pdev->dev, "Unable to enable device clock.\n");
		goto err_out_clk_dis_pclk;
	}

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		rc = -ENODEV;
		goto err_out_clk_disable;
	}

	irq = FUNC19(pdev, 0);
	if (irq <= 0) {
		rc = -ENXIO;
		goto err_out_clk_disable;
	}

#ifdef CONFIG_COMMON_CLK
	cdns_uart_data->clk_rate_change_nb.notifier_call =
			cdns_uart_clk_notifier_cb;
	if (clk_notifier_register(cdns_uart_data->uartclk,
				&cdns_uart_data->clk_rate_change_nb))
		dev_warn(&pdev->dev, "Unable to register clock notifier.\n");
#endif

	/* At this point, we've got an empty uart_port struct, initialize it */
	FUNC29(&port->lock);
	port->type	= PORT_UNKNOWN;
	port->iotype	= UPIO_MEM32;
	port->flags	= UPF_BOOT_AUTOCONF;
	port->ops	= &cdns_uart_ops;
	port->fifosize	= CDNS_UART_FIFO_SIZE;

	/*
	 * Register the port.
	 * This function also registers this device with the tty layer
	 * and triggers invocation of the config_port() entry point.
	 */
	port->mapbase = res->start;
	port->irq = irq;
	port->dev = &pdev->dev;
	port->uartclk = FUNC5(cdns_uart_data->uartclk);
	port->private_data = cdns_uart_data;
	cdns_uart_data->port = port;
	FUNC21(pdev, port);

	FUNC28(&pdev->dev);
	FUNC26(&pdev->dev, UART_AUTOSUSPEND_TIMEOUT);
	FUNC25(&pdev->dev);
	FUNC24(&pdev->dev);
	FUNC11(port->dev, true);

#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
	/*
	 * If console hasn't been found yet try to assign this port
	 * because it is required to be assigned for console setup function.
	 * If register_console() don't assign value, then console_port pointer
	 * is cleanup.
	 */
	if (!console_port)
		console_port = port;
#endif

	rc = FUNC31(cdns_uart_uart_driver, port);
	if (rc) {
		FUNC9(&pdev->dev,
			"uart_add_one_port() failed; err=%i\n", rc);
		goto err_out_pm_disable;
	}

#ifdef CONFIG_SERIAL_XILINX_PS_UART_CONSOLE
	/* This is not port which is used for console that's why clean it up */
	if (console_port == port &&
	    !(cdns_uart_uart_driver->cons->flags & CON_ENABLED))
		console_port = NULL;
#endif

	uartps_major = cdns_uart_uart_driver->tty_driver->major;
	cdns_uart_data->cts_override = FUNC18(pdev->dev.of_node,
							     "cts-override");
	return 0;

err_out_pm_disable:
	FUNC22(&pdev->dev);
	FUNC27(&pdev->dev);
	FUNC23(&pdev->dev);
#ifdef CONFIG_COMMON_CLK
	clk_notifier_unregister(cdns_uart_data->uartclk,
			&cdns_uart_data->clk_rate_change_nb);
#endif
err_out_clk_disable:
	FUNC4(cdns_uart_data->uartclk);
err_out_clk_dis_pclk:
	FUNC4(cdns_uart_data->pclk);
err_out_unregister_driver:
	FUNC33(cdns_uart_data->cdns_uart_driver);
err_out_id:
	FUNC15(&bitmap_lock);
	if (cdns_uart_data->id < MAX_UART_INSTANCES)
		FUNC3(cdns_uart_data->id, bitmap);
	FUNC16(&bitmap_lock);
	return rc;
}