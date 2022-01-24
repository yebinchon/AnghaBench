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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct c67x00_platform_data {int /*<<< orphan*/  hpi_regstep; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; int /*<<< orphan*/  regstep; int /*<<< orphan*/  lock; } ;
struct c67x00_device {TYPE_1__ hpi; int /*<<< orphan*/ * sie; struct platform_device* pdev; void* pdata; } ;

/* Variables and functions */
 int C67X00_SIES ; 
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  c67x00_irq ; 
 int /*<<< orphan*/  FUNC0 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*) ; 
 int FUNC2 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct c67x00_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct c67x00_device*) ; 
 struct c67x00_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct c67x00_device *c67x00;
	struct c67x00_platform_data *pdata;
	struct resource *res, *res2;
	int ret, i;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	res2 = FUNC11(pdev, IORESOURCE_IRQ, 0);
	if (!res2)
		return -ENODEV;

	pdata = FUNC5(&pdev->dev);
	if (!pdata)
		return -ENODEV;

	c67x00 = FUNC10(sizeof(*c67x00), GFP_KERNEL);
	if (!c67x00)
		return -ENOMEM;

	if (!FUNC15(res->start, FUNC16(res),
				pdev->name)) {
		FUNC4(&pdev->dev, "Memory region busy\n");
		ret = -EBUSY;
		goto request_mem_failed;
	}
	c67x00->hpi.base = FUNC7(res->start, FUNC16(res));
	if (!c67x00->hpi.base) {
		FUNC4(&pdev->dev, "Unable to map HPI registers\n");
		ret = -EIO;
		goto map_failed;
	}

	FUNC17(&c67x00->hpi.lock);
	c67x00->hpi.regstep = pdata->hpi_regstep;
	c67x00->pdata = FUNC5(&pdev->dev);
	c67x00->pdev = pdev;

	FUNC1(c67x00);
	FUNC0(c67x00);

	ret = FUNC14(res2->start, c67x00_irq, 0, pdev->name, c67x00);
	if (ret) {
		FUNC4(&pdev->dev, "Cannot claim IRQ\n");
		goto request_irq_failed;
	}

	ret = FUNC2(c67x00);
	if (ret) {
		FUNC4(&pdev->dev, "Device reset failed\n");
		goto reset_failed;
	}

	for (i = 0; i < C67X00_SIES; i++)
		FUNC3(&c67x00->sie[i], c67x00, i);

	FUNC12(pdev, c67x00);

	return 0;

 reset_failed:
	FUNC6(res2->start, c67x00);
 request_irq_failed:
	FUNC8(c67x00->hpi.base);
 map_failed:
	FUNC13(res->start, FUNC16(res));
 request_mem_failed:
	FUNC9(c67x00);

	return ret;
}