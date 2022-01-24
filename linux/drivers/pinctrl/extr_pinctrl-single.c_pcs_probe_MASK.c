#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcs_soc_data {int /*<<< orphan*/  flags; } ;
struct pcs_pdata {scalar_t__ irq; scalar_t__ rearm; } ;
struct TYPE_12__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  owner; int /*<<< orphan*/ * confops; int /*<<< orphan*/ * pmxops; int /*<<< orphan*/ * pctlops; int /*<<< orphan*/  name; } ;
struct TYPE_14__ {scalar_t__ irq; scalar_t__ rearm; } ;
struct pcs_device {int width; int fmask; int fshift; int fmax; int foff; int /*<<< orphan*/  pctl; int /*<<< orphan*/  size; TYPE_1__ desc; TYPE_2__* dev; int /*<<< orphan*/  flags; TYPE_4__ socdata; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  base; struct resource* res; scalar_t__ bits_per_mux; int /*<<< orphan*/  gpiofuncs; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; struct device_node* np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  PCS_FEAT_IRQ ; 
 scalar_t__ PCS_HAS_IRQ ; 
 scalar_t__ PCS_HAS_PINCONF ; 
 int PCS_OFF_DISABLED ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 struct pcs_pdata* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcs_device* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,struct pcs_soc_data const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct pcs_soc_data* FUNC13 (TYPE_2__*) ; 
 scalar_t__ FUNC14 (struct device_node*,char*) ; 
 int FUNC15 (struct device_node*,char*,int*) ; 
 int FUNC16 (struct device_node*,struct pcs_device*) ; 
 int FUNC17 (struct pcs_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct pcs_device*) ; 
 int FUNC19 (struct pcs_device*,struct device_node*) ; 
 int /*<<< orphan*/  pcs_pinconf_ops ; 
 int /*<<< orphan*/  pcs_pinctrl_ops ; 
 int /*<<< orphan*/  pcs_pinmux_ops ; 
 int FUNC20 (struct pcs_device*,struct device_node*,int) ; 
 int /*<<< orphan*/  pcs_readb ; 
 int /*<<< orphan*/  pcs_readl ; 
 int /*<<< orphan*/  pcs_readw ; 
 int /*<<< orphan*/  pcs_writeb ; 
 int /*<<< orphan*/  pcs_writel ; 
 int /*<<< orphan*/  pcs_writew ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (TYPE_1__*,TYPE_2__*,struct pcs_device*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct pcs_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct resource*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct pcs_pdata *pdata;
	struct resource *res;
	struct pcs_device *pcs;
	const struct pcs_soc_data *soc;
	int ret;

	soc = FUNC13(&pdev->dev);
	if (FUNC1(!soc))
		return -EINVAL;

	pcs = FUNC8(&pdev->dev, sizeof(*pcs), GFP_KERNEL);
	if (!pcs)
		return -ENOMEM;

	pcs->dev = &pdev->dev;
	pcs->np = np;
	FUNC25(&pcs->lock);
	FUNC12(&pcs->mutex);
	FUNC0(&pcs->gpiofuncs);
	pcs->flags = soc->flags;
	FUNC11(&pcs->socdata, soc, sizeof(*soc));

	ret = FUNC15(np, "pinctrl-single,register-width",
				   &pcs->width);
	if (ret) {
		FUNC3(pcs->dev, "register width not specified\n");

		return ret;
	}

	ret = FUNC15(np, "pinctrl-single,function-mask",
				   &pcs->fmask);
	if (!ret) {
		pcs->fshift = FUNC2(pcs->fmask);
		pcs->fmax = pcs->fmask >> pcs->fshift;
	} else {
		/* If mask property doesn't exist, function mux is invalid. */
		pcs->fmask = 0;
		pcs->fshift = 0;
		pcs->fmax = 0;
	}

	ret = FUNC15(np, "pinctrl-single,function-off",
					&pcs->foff);
	if (ret)
		pcs->foff = PCS_OFF_DISABLED;

	pcs->bits_per_mux = FUNC14(np,
						  "pinctrl-single,bit-per-mux");
	ret = FUNC20(pcs, np,
					      pcs->bits_per_mux ? 2 : 1);
	if (ret) {
		FUNC3(&pdev->dev, "unable to patch #pinctrl-cells\n");

		return ret;
	}

	res = FUNC23(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(pcs->dev, "could not get resource\n");
		return -ENODEV;
	}

	pcs->res = FUNC9(pcs->dev, res->start,
			FUNC26(res), DRIVER_NAME);
	if (!pcs->res) {
		FUNC3(pcs->dev, "could not get mem_region\n");
		return -EBUSY;
	}

	pcs->size = FUNC26(pcs->res);
	pcs->base = FUNC7(pcs->dev, pcs->res->start, pcs->size);
	if (!pcs->base) {
		FUNC3(pcs->dev, "could not ioremap\n");
		return -ENODEV;
	}

	FUNC24(pdev, pcs);

	switch (pcs->width) {
	case 8:
		pcs->read = pcs_readb;
		pcs->write = pcs_writeb;
		break;
	case 16:
		pcs->read = pcs_readw;
		pcs->write = pcs_writew;
		break;
	case 32:
		pcs->read = pcs_readl;
		pcs->write = pcs_writel;
		break;
	default:
		break;
	}

	pcs->desc.name = DRIVER_NAME;
	pcs->desc.pctlops = &pcs_pinctrl_ops;
	pcs->desc.pmxops = &pcs_pinmux_ops;
	if (PCS_HAS_PINCONF)
		pcs->desc.confops = &pcs_pinconf_ops;
	pcs->desc.owner = THIS_MODULE;

	ret = FUNC17(pcs);
	if (ret < 0)
		goto free;

	ret = FUNC22(&pcs->desc, pcs->dev, pcs, &pcs->pctl);
	if (ret) {
		FUNC3(pcs->dev, "could not register single pinctrl driver\n");
		goto free;
	}

	ret = FUNC16(np, pcs);
	if (ret < 0)
		goto free;

	pcs->socdata.irq = FUNC10(np, 0);
	if (pcs->socdata.irq)
		pcs->flags |= PCS_FEAT_IRQ;

	/* We still need auxdata for some omaps for PRM interrupts */
	pdata = FUNC4(&pdev->dev);
	if (pdata) {
		if (pdata->rearm)
			pcs->socdata.rearm = pdata->rearm;
		if (pdata->irq) {
			pcs->socdata.irq = pdata->irq;
			pcs->flags |= PCS_FEAT_IRQ;
		}
	}

	if (PCS_HAS_IRQ) {
		ret = FUNC19(pcs, np);
		if (ret < 0)
			FUNC6(pcs->dev, "initialized with no interrupts\n");
	}

	FUNC5(pcs->dev, "%i pins, size %u\n", pcs->desc.npins, pcs->size);

	return FUNC21(pcs->pctl);

free:
	FUNC18(pcs);

	return ret;
}