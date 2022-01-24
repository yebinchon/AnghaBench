#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* coherent_dma_mask; void** dma_mask; struct iss_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct iss_platform_data {int dummy; } ;
struct iss_device {int irq_num; int /*<<< orphan*/  iss_mutex; int /*<<< orphan*/  crashed; int /*<<< orphan*/  media_dev; TYPE_1__* dev; int /*<<< orphan*/  revision; int /*<<< orphan*/  syscon; void* raw_dmamask; struct iss_platform_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTE_CTRL ; 
 int /*<<< orphan*/  BTE_CTRL_BW_LIMITER_MASK ; 
 int BTE_CTRL_BW_LIMITER_SHIFT ; 
 void* FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  ISP5_REVISION ; 
 int /*<<< orphan*/  ISS_HL_REVISION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_BTE ; 
 unsigned int OMAP4_ISS_MEM_ISP_SYS1 ; 
 unsigned int OMAP4_ISS_MEM_LAST ; 
 unsigned int OMAP4_ISS_MEM_TOP ; 
 int /*<<< orphan*/  OMAP4_ISS_SUBCLK_ISP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct iss_device* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct iss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct iss_device*) ; 
 int FUNC8 (struct iss_device*) ; 
 int FUNC9 (struct iss_device*) ; 
 int FUNC10 (struct iss_device*) ; 
 int FUNC11 (struct iss_device*) ; 
 int /*<<< orphan*/  iss_isr ; 
 int FUNC12 (struct platform_device*,struct iss_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct iss_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct iss_device*) ; 
 int FUNC16 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct iss_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct iss_device*) ; 
 int FUNC24 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct iss_device*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static int FUNC28(struct platform_device *pdev)
{
	struct iss_platform_data *pdata = pdev->dev.platform_data;
	struct iss_device *iss;
	unsigned int i;
	int ret;

	if (!pdata)
		return -EINVAL;

	iss = FUNC5(&pdev->dev, sizeof(*iss), GFP_KERNEL);
	if (!iss)
		return -ENOMEM;

	FUNC21(&iss->iss_mutex);

	iss->dev = &pdev->dev;
	iss->pdata = pdata;

	iss->raw_dmamask = FUNC0(32);
	iss->dev->dma_mask = &iss->raw_dmamask;
	iss->dev->coherent_dma_mask = FUNC0(32);

	FUNC26(pdev, iss);

	/*
	 * TODO: When implementing DT support switch to syscon regmap lookup by
	 * phandle.
	 */
	iss->syscon = FUNC27("syscon");
	if (FUNC1(iss->syscon)) {
		ret = FUNC2(iss->syscon);
		goto error;
	}

	/* Clocks */
	ret = FUNC12(pdev, iss, OMAP4_ISS_MEM_TOP);
	if (ret < 0)
		goto error;

	ret = FUNC9(iss);
	if (ret < 0)
		goto error;

	if (!FUNC22(iss))
		goto error;

	ret = FUNC16(iss);
	if (ret < 0)
		goto error_iss;

	iss->revision = FUNC13(iss, OMAP4_ISS_MEM_TOP, ISS_HL_REVISION);
	FUNC4(iss->dev, "Revision %08x found\n", iss->revision);

	for (i = 1; i < OMAP4_ISS_MEM_LAST; i++) {
		ret = FUNC12(pdev, iss, i);
		if (ret)
			goto error_iss;
	}

	/* Configure BTE BW_LIMITER field to max recommended value (1 GB) */
	FUNC14(iss, OMAP4_ISS_MEM_BTE, BTE_CTRL,
		       BTE_CTRL_BW_LIMITER_MASK,
		       18 << BTE_CTRL_BW_LIMITER_SHIFT);

	/* Perform ISP reset */
	ret = FUNC24(iss, OMAP4_ISS_SUBCLK_ISP);
	if (ret < 0)
		goto error_iss;

	ret = FUNC11(iss);
	if (ret < 0)
		goto error_iss;

	FUNC4(iss->dev, "ISP Revision %08x found\n",
		 FUNC13(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_REVISION));

	/* Interrupt */
	ret = FUNC25(pdev, 0);
	if (ret <= 0) {
		ret = -ENODEV;
		goto error_iss;
	}
	iss->irq_num = ret;

	if (FUNC6(iss->dev, iss->irq_num, iss_isr, IRQF_SHARED,
			     "OMAP4 ISS", iss)) {
		FUNC3(iss->dev, "Unable to request IRQ\n");
		ret = -EINVAL;
		goto error_iss;
	}

	/* Entities */
	ret = FUNC10(iss);
	if (ret < 0)
		goto error_iss;

	ret = FUNC15(iss);
	if (ret < 0)
		goto error_modules;

	ret = FUNC19(&iss->crashed, &iss->media_dev);
	if (ret)
		goto error_entities;

	ret = FUNC8(iss);
	if (ret < 0)
		goto error_entities;

	FUNC23(iss);

	return 0;

error_entities:
	FUNC17(iss);
	FUNC18(&iss->crashed);
error_modules:
	FUNC7(iss);
error_iss:
	FUNC23(iss);
error:
	FUNC20(&iss->iss_mutex);

	return ret;
}