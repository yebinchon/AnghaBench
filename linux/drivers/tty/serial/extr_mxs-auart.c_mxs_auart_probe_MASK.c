#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {size_t id; int /*<<< orphan*/  dev; TYPE_1__* id_entry; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_4__ {size_t line; int irq; int /*<<< orphan*/  type; int /*<<< orphan*/  uartclk; int /*<<< orphan*/  fifosize; int /*<<< orphan*/  iotype; int /*<<< orphan*/ * ops; int /*<<< orphan*/  membase; int /*<<< orphan*/  mapbase; int /*<<< orphan*/ * dev; } ;
struct mxs_auart_port {int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk; TYPE_2__ port; scalar_t__ mctrl_prev; int /*<<< orphan*/  devtype; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 size_t FUNC0 (struct mxs_auart_port**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  MXS_AUART_FIFO_SIZE ; 
 int /*<<< orphan*/  PORT_IMX ; 
 int /*<<< orphan*/  REG_VERSION ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  auart_driver ; 
 struct mxs_auart_port** auart_port ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mxs_auart_port* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  mxs_auart_dt_ids ; 
 int /*<<< orphan*/  FUNC10 (struct mxs_auart_port*) ; 
 int FUNC11 (struct mxs_auart_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mxs_auart_irq_handle ; 
 int /*<<< orphan*/  mxs_auart_ops ; 
 int FUNC12 (struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC13 (struct mxs_auart_port*) ; 
 int FUNC14 (struct mxs_auart_port*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct mxs_auart_port*) ; 
 int FUNC16 (struct mxs_auart_port*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct mxs_auart_port*) ; 
 int /*<<< orphan*/  FUNC21 (struct resource*) ; 
 int FUNC22 (struct mxs_auart_port*,struct platform_device*) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	const struct of_device_id *of_id =
			FUNC17(mxs_auart_dt_ids, &pdev->dev);
	struct mxs_auart_port *s;
	u32 version;
	int ret, irq;
	struct resource *r;

	s = FUNC6(&pdev->dev, sizeof(*s), GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	s->port.dev = &pdev->dev;
	s->dev = &pdev->dev;

	ret = FUNC22(s, pdev);
	if (ret > 0)
		s->port.line = pdev->id < 0 ? 0 : pdev->id;
	else if (ret < 0)
		return ret;
	if (s->port.line >= FUNC0(auart_port)) {
		FUNC3(&pdev->dev, "serial%d out of range\n", s->port.line);
		return -EINVAL;
	}

	if (of_id) {
		pdev->id_entry = of_id->data;
		s->devtype = pdev->id_entry->driver_data;
	}

	ret = FUNC14(s, pdev);
	if (ret)
		return ret;

	r = FUNC19(pdev, IORESOURCE_MEM, 0);
	if (!r) {
		ret = -ENXIO;
		goto out_disable_clks;
	}

	s->port.mapbase = r->start;
	s->port.membase = FUNC8(r->start, FUNC21(r));
	if (!s->port.membase) {
		ret = -ENOMEM;
		goto out_disable_clks;
	}
	s->port.ops = &mxs_auart_ops;
	s->port.iotype = UPIO_MEM;
	s->port.fifosize = MXS_AUART_FIFO_SIZE;
	s->port.uartclk = FUNC2(s->clk);
	s->port.type = PORT_IMX;

	FUNC15(s);

	s->mctrl_prev = 0;

	irq = FUNC18(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto out_disable_clks;
	}

	s->port.irq = irq;
	ret = FUNC7(&pdev->dev, irq, mxs_auart_irq_handle, 0,
			       FUNC5(&pdev->dev), s);
	if (ret)
		goto out_disable_clks;

	FUNC20(pdev, s);

	ret = FUNC11(s, &pdev->dev);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to initialize GPIOs.\n");
		goto out_disable_clks;
	}

	/*
	 * Get the GPIO lines IRQ
	 */
	ret = FUNC12(s);
	if (ret)
		goto out_disable_clks;

	auart_port[s->port.line] = s;

	FUNC13(s);

	ret = FUNC23(&auart_driver, &s->port);
	if (ret)
		goto out_free_qpio_irq;

	/* ASM9260 don't have version reg */
	if (FUNC9(s)) {
		FUNC4(&pdev->dev, "Found APPUART ASM9260\n");
	} else {
		version = FUNC16(s, REG_VERSION);
		FUNC4(&pdev->dev, "Found APPUART %d.%d.%d\n",
			 (version >> 24) & 0xff,
			 (version >> 16) & 0xff, version & 0xffff);
	}

	return 0;

out_free_qpio_irq:
	FUNC10(s);
	auart_port[pdev->id] = NULL;

out_disable_clks:
	if (FUNC9(s)) {
		FUNC1(s->clk);
		FUNC1(s->clk_ahb);
	}
	return ret;
}