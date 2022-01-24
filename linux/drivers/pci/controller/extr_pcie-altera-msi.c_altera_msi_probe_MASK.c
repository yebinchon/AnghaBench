#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct altera_msi {int irq; int /*<<< orphan*/  num_of_vectors; int /*<<< orphan*/  vector_phy; void* vector_base; void* csr_base; struct platform_device* pdev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (struct altera_msi*) ; 
 int /*<<< orphan*/  altera_msi_isr ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 void* FUNC5 (TYPE_1__*,struct resource*) ; 
 struct altera_msi* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct altera_msi*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct altera_msi*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct altera_msi *msi;
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	int ret;

	msi = FUNC6(&pdev->dev, sizeof(struct altera_msi),
			   GFP_KERNEL);
	if (!msi)
		return -ENOMEM;

	FUNC8(&msi->lock);
	msi->pdev = pdev;

	res = FUNC11(pdev, IORESOURCE_MEM, "csr");
	msi->csr_base = FUNC5(&pdev->dev, res);
	if (FUNC0(msi->csr_base)) {
		FUNC4(&pdev->dev, "failed to map csr memory\n");
		return FUNC1(msi->csr_base);
	}

	res = FUNC11(pdev, IORESOURCE_MEM,
					   "vector_slave");
	msi->vector_base = FUNC5(&pdev->dev, res);
	if (FUNC0(msi->vector_base)) {
		FUNC4(&pdev->dev, "failed to map vector_slave memory\n");
		return FUNC1(msi->vector_base);
	}

	msi->vector_phy = res->start;

	if (FUNC9(np, "num-vectors", &msi->num_of_vectors)) {
		FUNC4(&pdev->dev, "failed to parse the number of vectors\n");
		return -EINVAL;
	}

	ret = FUNC2(msi);
	if (ret)
		return ret;

	msi->irq = FUNC10(pdev, 0);
	if (msi->irq < 0) {
		FUNC4(&pdev->dev, "failed to map IRQ: %d\n", msi->irq);
		ret = msi->irq;
		goto err;
	}

	FUNC7(msi->irq, altera_msi_isr, msi);
	FUNC12(pdev, msi);

	return 0;

err:
	FUNC3(pdev);
	return ret;
}