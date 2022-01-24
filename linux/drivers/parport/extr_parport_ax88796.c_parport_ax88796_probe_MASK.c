#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;
struct parport {struct ax_drvdata* private_data; } ;
struct ax_drvdata {int irq_enabled; TYPE_1__* io; int /*<<< orphan*/ * base; int /*<<< orphan*/ * spp_cpr; int /*<<< orphan*/ * spp_spr; int /*<<< orphan*/ * spp_data; struct device* dev; struct parport* parport; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CPR_STRB ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  PARPORT_DMA_NONE ; 
 int PARPORT_IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ax_drvdata*) ; 
 struct ax_drvdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct parport*) ; 
 int /*<<< orphan*/  parport_ax88796_ops ; 
 int /*<<< orphan*/  parport_irq_handler ; 
 struct parport* FUNC7 (unsigned long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct parport*) ; 
 int FUNC9 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct parport*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct parport*) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *_dev = &pdev->dev;
	struct ax_drvdata *dd;
	struct parport *pp;
	struct resource *res;
	unsigned long size;
	int spacing;
	int irq;
	int ret;

	dd = FUNC5(sizeof(*dd), GFP_KERNEL);
	if (!dd)
		return -ENOMEM;

	res = FUNC10(pdev, IORESOURCE_MEM, 0);
	if (res == NULL) {
		FUNC0(_dev, "no MEM specified\n");
		ret = -ENXIO;
		goto exit_mem;
	}

	size = FUNC15(res);
	spacing = size / 3;

	dd->io = FUNC14(res->start, size, pdev->name);
	if (dd->io == NULL) {
		FUNC0(_dev, "cannot reserve memory\n");
		ret = -ENXIO;
		goto exit_mem;
	}

	dd->base = FUNC2(res->start, size);
	if (dd->base == NULL) {
		FUNC0(_dev, "cannot ioremap region\n");
		ret = -ENXIO;
		goto exit_res;
	}

	irq = FUNC9(pdev, 0);
	if (irq <= 0)
		irq = PARPORT_IRQ_NONE;

	pp = FUNC7((unsigned long)dd->base, irq,
				   PARPORT_DMA_NONE,
				   &parport_ax88796_ops);

	if (pp == NULL) {
		FUNC0(_dev, "failed to register parallel port\n");
		ret = -ENOMEM;
		goto exit_unmap;
	}

	pp->private_data = dd;
	dd->parport = pp;
	dd->dev = _dev;

	dd->spp_data = dd->base;
	dd->spp_spr  = dd->base + (spacing * 1);
	dd->spp_cpr  = dd->base + (spacing * 2);

	/* initialise the port controls */
	FUNC16(AX_CPR_STRB, dd->spp_cpr);

	if (irq >= 0) {
		/* request irq */
		ret = FUNC13(irq, parport_irq_handler,
				  IRQF_TRIGGER_FALLING, pdev->name, pp);

		if (ret < 0)
			goto exit_port;

		dd->irq_enabled = 1;
	}

	FUNC11(pdev, pp);

	FUNC1(_dev, "attached parallel port driver\n");
	FUNC6(pp);

	return 0;

 exit_port:
	FUNC8(pp);
 exit_unmap:
	FUNC3(dd->base);
 exit_res:
	FUNC12(dd->io->start, size);
 exit_mem:
	FUNC4(dd);
	return ret;
}