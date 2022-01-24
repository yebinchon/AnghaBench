#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; int /*<<< orphan*/  minor; } ;
struct pxa3xx_gcu_priv {int /*<<< orphan*/  clk; TYPE_1__ misc_dev; scalar_t__ shared_phys; int /*<<< orphan*/  shared; struct device* dev; struct resource* resource_mem; int /*<<< orphan*/  mmio_base; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  wait_free; int /*<<< orphan*/  wait_idle; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MISCDEV_MINOR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHARED_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct pxa3xx_gcu_priv* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct pxa3xx_gcu_priv*) ; 
 int FUNC18 (struct device*,struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  pxa3xx_gcu_handle_irq ; 
 int /*<<< orphan*/  FUNC19 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  pxa3xx_gcu_miscdev_fops ; 
 int /*<<< orphan*/  FUNC20 (struct pxa3xx_gcu_priv*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	int i, ret, irq;
	struct resource *r;
	struct pxa3xx_gcu_priv *priv;
	struct device *dev = &pdev->dev;

	priv = FUNC8(dev, sizeof(struct pxa3xx_gcu_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC12(&priv->wait_idle);
	FUNC12(&priv->wait_free);
	FUNC21(&priv->spinlock);

	/* we allocate the misc device structure as part of our own allocation,
	 * so we can get a pointer to our priv structure later on with
	 * container_of(). This isn't really necessary as we have a fixed minor
	 * number anyway, but this is to avoid statics. */

	priv->misc_dev.minor	= MISCDEV_MINOR,
	priv->misc_dev.name	= DRV_NAME,
	priv->misc_dev.fops	= &pxa3xx_gcu_miscdev_fops;

	/* handle IO resources */
	r = FUNC16(pdev, IORESOURCE_MEM, 0);
	priv->mmio_base = FUNC7(dev, r);
	if (FUNC0(priv->mmio_base))
		return FUNC1(priv->mmio_base);

	/* enable the clock */
	priv->clk = FUNC6(dev, NULL);
	if (FUNC0(priv->clk)) {
		FUNC4(dev, "failed to get clock\n");
		return FUNC1(priv->clk);
	}

	/* request the IRQ */
	irq = FUNC15(pdev, 0);
	if (irq < 0) {
		FUNC4(dev, "no IRQ defined: %d\n", irq);
		return irq;
	}

	ret = FUNC9(dev, irq, pxa3xx_gcu_handle_irq,
			       0, DRV_NAME, priv);
	if (ret < 0) {
		FUNC4(dev, "request_irq failed\n");
		return ret;
	}

	/* allocate dma memory */
	priv->shared = FUNC10(dev, SHARED_SIZE,
					  &priv->shared_phys, GFP_KERNEL);
	if (!priv->shared) {
		FUNC4(dev, "failed to allocate DMA memory\n");
		return -ENOMEM;
	}

	/* register misc device */
	ret = FUNC14(&priv->misc_dev);
	if (ret < 0) {
		FUNC4(dev, "misc_register() for minor %d failed\n",
			MISCDEV_MINOR);
		goto err_free_dma;
	}

	ret = FUNC3(priv->clk);
	if (ret < 0) {
		FUNC4(dev, "failed to enable clock\n");
		goto err_misc_deregister;
	}

	for (i = 0; i < 8; i++) {
		ret = FUNC18(dev, priv);
		if (ret) {
			FUNC4(dev, "failed to allocate DMA memory\n");
			goto err_disable_clk;
		}
	}

	FUNC17(pdev, priv);
	priv->resource_mem = r;
	priv->dev = dev;
	FUNC20(priv);
	FUNC19(priv);

	FUNC5(dev, "registered @0x%p, DMA 0x%p (%d bytes), IRQ %d\n",
			(void *) r->start, (void *) priv->shared_phys,
			SHARED_SIZE, irq);
	return 0;

err_free_dma:
	FUNC11(dev, SHARED_SIZE,
			priv->shared, priv->shared_phys);

err_misc_deregister:
	FUNC13(&priv->misc_dev);

err_disable_clk:
	FUNC2(priv->clk);

	return ret;
}