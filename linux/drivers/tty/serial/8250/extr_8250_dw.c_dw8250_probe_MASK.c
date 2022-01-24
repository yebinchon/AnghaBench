#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct uart_port {int irq; int flags; int regshift; int uartclk; int fifosize; int /*<<< orphan*/ * handle_irq; int /*<<< orphan*/  serial_out; int /*<<< orphan*/  serial_in; int /*<<< orphan*/  iotype; TYPE_4__* private_data; int /*<<< orphan*/  membase; int /*<<< orphan*/  set_termios; int /*<<< orphan*/  set_ldisc; struct device* dev; int /*<<< orphan*/  type; int /*<<< orphan*/  pm; int /*<<< orphan*/  mapbase; int /*<<< orphan*/  lock; } ;
struct uart_8250_port {TYPE_3__* dma; struct uart_port port; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int dst_maxburst; } ;
struct TYPE_5__ {int src_maxburst; } ;
struct TYPE_7__ {TYPE_2__ txconf; TYPE_1__ rxconf; int /*<<< orphan*/  fn; } ;
struct TYPE_8__ {int line; TYPE_3__ dma; } ;
struct dw8250_data {void* clk; void* pclk; void* rst; TYPE_4__ data; int /*<<< orphan*/  skip_autocfg; scalar_t__ uart_16550_compatible; int /*<<< orphan*/  msr_mask_off; int /*<<< orphan*/  msr_mask_on; int /*<<< orphan*/  usr_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_UART_USR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  PORT_8250 ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  UART_MSR_CTS ; 
 int /*<<< orphan*/  UART_MSR_DCD ; 
 int /*<<< orphan*/  UART_MSR_DCTS ; 
 int /*<<< orphan*/  UART_MSR_DDCD ; 
 int /*<<< orphan*/  UART_MSR_DDSR ; 
 int /*<<< orphan*/  UART_MSR_DSR ; 
 int /*<<< orphan*/  UART_MSR_RI ; 
 int /*<<< orphan*/  UART_MSR_TERI ; 
 int UPF_FIXED_PORT ; 
 int UPF_SHARE_IRQ ; 
 int /*<<< orphan*/  UPIO_MEM ; 
 int /*<<< orphan*/  UPIO_MEM32 ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int) ; 
 scalar_t__ FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct device*,char*,int*) ; 
 void* FUNC10 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dw8250_data* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dw8250_do_pm ; 
 int /*<<< orphan*/  dw8250_fallback_dma_filter ; 
 int /*<<< orphan*/ * dw8250_handle_irq ; 
 int /*<<< orphan*/  FUNC14 (struct uart_port*,struct dw8250_data*) ; 
 int /*<<< orphan*/  dw8250_serial_in ; 
 int /*<<< orphan*/  dw8250_serial_in32 ; 
 int /*<<< orphan*/  dw8250_serial_out ; 
 int /*<<< orphan*/  dw8250_serial_out32 ; 
 int /*<<< orphan*/  dw8250_set_ldisc ; 
 int /*<<< orphan*/  dw8250_set_termios ; 
 int /*<<< orphan*/  FUNC15 (struct uart_port*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct dw8250_data*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 
 int FUNC24 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct uart_8250_port uart = {}, *up = &uart;
	struct resource *regs = FUNC17(pdev, IORESOURCE_MEM, 0);
	int irq = FUNC16(pdev, 0);
	struct uart_port *p = &up->port;
	struct device *dev = &pdev->dev;
	struct dw8250_data *data;
	int err;
	u32 val;

	if (!regs) {
		FUNC6(dev, "no registers defined\n");
		return -EINVAL;
	}

	if (irq < 0) {
		if (irq != -EPROBE_DEFER)
			FUNC6(dev, "cannot get irq\n");
		return irq;
	}

	FUNC25(&p->lock);
	p->mapbase	= regs->start;
	p->irq		= irq;
	p->handle_irq	= dw8250_handle_irq;
	p->pm		= dw8250_do_pm;
	p->type		= PORT_8250;
	p->flags	= UPF_SHARE_IRQ | UPF_FIXED_PORT;
	p->dev		= dev;
	p->iotype	= UPIO_MEM;
	p->serial_in	= dw8250_serial_in;
	p->serial_out	= dw8250_serial_out;
	p->set_ldisc	= dw8250_set_ldisc;
	p->set_termios	= dw8250_set_termios;

	p->membase = FUNC11(dev, regs->start, FUNC23(regs));
	if (!p->membase)
		return -ENOMEM;

	data = FUNC12(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->data.dma.fn = dw8250_fallback_dma_filter;
	data->usr_reg = DW_UART_USR;
	p->private_data = &data->data;

	data->uart_16550_compatible = FUNC8(dev,
						"snps,uart-16550-compatible");

	err = FUNC9(dev, "reg-shift", &val);
	if (!err)
		p->regshift = val;

	err = FUNC9(dev, "reg-io-width", &val);
	if (!err && val == 4) {
		p->iotype = UPIO_MEM32;
		p->serial_in = dw8250_serial_in32;
		p->serial_out = dw8250_serial_out32;
	}

	if (FUNC8(dev, "dcd-override")) {
		/* Always report DCD as active */
		data->msr_mask_on |= UART_MSR_DCD;
		data->msr_mask_off |= UART_MSR_DDCD;
	}

	if (FUNC8(dev, "dsr-override")) {
		/* Always report DSR as active */
		data->msr_mask_on |= UART_MSR_DSR;
		data->msr_mask_off |= UART_MSR_DDSR;
	}

	if (FUNC8(dev, "cts-override")) {
		/* Always report CTS as active */
		data->msr_mask_on |= UART_MSR_CTS;
		data->msr_mask_off |= UART_MSR_DCTS;
	}

	if (FUNC8(dev, "ri-override")) {
		/* Always report Ring indicator as inactive */
		data->msr_mask_off |= UART_MSR_RI;
		data->msr_mask_off |= UART_MSR_TERI;
	}

	/* Always ask for fixed clock rate from a property. */
	FUNC9(dev, "clock-frequency", &p->uartclk);

	/* If there is separate baudclk, get the rate from it. */
	data->clk = FUNC10(dev, "baudclk");
	if (FUNC0(data->clk) && FUNC2(data->clk) != -EPROBE_DEFER)
		data->clk = FUNC10(dev, NULL);
	if (FUNC0(data->clk) && FUNC2(data->clk) == -EPROBE_DEFER)
		return -EPROBE_DEFER;
	if (!FUNC1(data->clk)) {
		err = FUNC5(data->clk);
		if (err)
			FUNC7(dev, "could not enable optional baudclk: %d\n",
				 err);
		else
			p->uartclk = FUNC4(data->clk);
	}

	/* If no clock rate is defined, fail. */
	if (!p->uartclk) {
		FUNC6(dev, "clock rate not defined\n");
		err = -EINVAL;
		goto err_clk;
	}

	data->pclk = FUNC10(dev, "apb_pclk");
	if (FUNC0(data->pclk) && FUNC2(data->pclk) == -EPROBE_DEFER) {
		err = -EPROBE_DEFER;
		goto err_clk;
	}
	if (!FUNC0(data->pclk)) {
		err = FUNC5(data->pclk);
		if (err) {
			FUNC6(dev, "could not enable apb_pclk\n");
			goto err_clk;
		}
	}

	data->rst = FUNC13(dev, NULL);
	if (FUNC0(data->rst)) {
		err = FUNC2(data->rst);
		goto err_pclk;
	}
	FUNC22(data->rst);

	FUNC14(p, data);

	/* If the Busy Functionality is not implemented, don't handle it */
	if (data->uart_16550_compatible)
		p->handle_irq = NULL;

	if (!data->skip_autocfg)
		FUNC15(p);

	/* If we have a valid fifosize, try hooking up DMA */
	if (p->fifosize) {
		data->data.dma.rxconf.src_maxburst = p->fifosize / 4;
		data->data.dma.txconf.dst_maxburst = p->fifosize / 4;
		up->dma = &data->data.dma;
	}

	data->data.line = FUNC24(up);
	if (data->data.line < 0) {
		err = data->data.line;
		goto err_reset;
	}

	FUNC18(pdev, data);

	FUNC20(dev);
	FUNC19(dev);

	return 0;

err_reset:
	FUNC21(data->rst);

err_pclk:
	if (!FUNC0(data->pclk))
		FUNC3(data->pclk);

err_clk:
	if (!FUNC0(data->clk))
		FUNC3(data->clk);

	return err;
}