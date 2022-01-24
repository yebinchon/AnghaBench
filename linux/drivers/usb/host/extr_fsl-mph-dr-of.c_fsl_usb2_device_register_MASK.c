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
struct resource {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; struct TYPE_2__* parent; } ;
struct platform_device {unsigned int num_resources; TYPE_1__ dev; struct resource* resource; } ;
struct fsl_usb2_platform_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 struct platform_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,struct fsl_usb2_platform_data*,int) ; 
 int FUNC5 (struct platform_device*,struct resource const*,unsigned int) ; 
 struct platform_device* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 

__attribute__((used)) static struct platform_device *FUNC8(
					struct platform_device *ofdev,
					struct fsl_usb2_platform_data *pdata,
					const char *name, int id)
{
	struct platform_device *pdev;
	const struct resource *res = ofdev->resource;
	unsigned int num = ofdev->num_resources;
	int retval;

	pdev = FUNC6(name, id);
	if (!pdev) {
		retval = -ENOMEM;
		goto error;
	}

	pdev->dev.parent = &ofdev->dev;

	pdev->dev.coherent_dma_mask = ofdev->dev.coherent_dma_mask;

	if (!pdev->dev.dma_mask)
		pdev->dev.dma_mask = &ofdev->dev.coherent_dma_mask;
	else
		FUNC2(&pdev->dev, FUNC0(32));

	retval = FUNC4(pdev, pdata, sizeof(*pdata));
	if (retval)
		goto error;

	if (num) {
		retval = FUNC5(pdev, res, num);
		if (retval)
			goto error;
	}

	retval = FUNC3(pdev);
	if (retval)
		goto error;

	return pdev;

error:
	FUNC7(pdev);
	return FUNC1(retval);
}