#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mx3fb_data {int backlight_level; int /*<<< orphan*/  reg_base; struct device* dev; int /*<<< orphan*/  lock; } ;
struct dma_chan_request {int /*<<< orphan*/  id; struct mx3fb_data* mx3fb; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IDMAC_SDC_0 ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  chan_filter ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct mx3fb_data* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_chan*) ; 
 struct dma_chan* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_chan_request*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mx3fb_data*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mx3fb_data*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct dma_chan*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;
	struct resource *sdc_reg;
	struct mx3fb_data *mx3fb;
	dma_cap_mask_t mask;
	struct dma_chan *chan;
	struct dma_chan_request rq;

	/*
	 * Display Interface (DI) and Synchronous Display Controller (SDC)
	 * registers
	 */
	sdc_reg = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!sdc_reg)
		return -EINVAL;

	mx3fb = FUNC1(&pdev->dev, sizeof(*mx3fb), GFP_KERNEL);
	if (!mx3fb)
		return -ENOMEM;

	FUNC16(&mx3fb->lock);

	mx3fb->reg_base = FUNC9(sdc_reg->start, FUNC15(sdc_reg));
	if (!mx3fb->reg_base) {
		ret = -ENOMEM;
		goto eremap;
	}

	FUNC14("Remapped %pR at %p\n", sdc_reg, mx3fb->reg_base);

	/* IDMAC interface */
	FUNC6();

	mx3fb->dev = dev;
	FUNC13(pdev, mx3fb);

	rq.mx3fb = mx3fb;

	FUNC3(mask);
	FUNC2(DMA_SLAVE, mask);
	FUNC2(DMA_PRIVATE, mask);
	rq.id = IDMAC_SDC_0;
	chan = FUNC5(mask, chan_filter, &rq);
	if (!chan) {
		ret = -EBUSY;
		goto ersdc0;
	}

	mx3fb->backlight_level = 255;

	ret = FUNC8(mx3fb, FUNC17(chan));
	if (ret < 0)
		goto eisdc0;

	FUNC11(mx3fb);

	return 0;

eisdc0:
	FUNC4(chan);
ersdc0:
	FUNC7();
	FUNC10(mx3fb->reg_base);
eremap:
	FUNC0(dev, "mx3fb: failed to register fb\n");
	return ret;
}