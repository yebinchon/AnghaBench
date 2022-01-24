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
struct cdns3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  cdns3_device_irq_handler ; 
 int /*<<< orphan*/  cdns3_device_thread_irq_handler ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3*) ; 
 int FUNC3 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cdns3*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cdns3 *cdns)
{
	int ret = 0;

	/* Ensure 32-bit DMA Mask in case we switched back from Host mode */
	ret = FUNC7(cdns->dev, FUNC0(32));
	if (ret) {
		FUNC4(cdns->dev, "Failed to set dma mask: %d\n", ret);
		return ret;
	}

	FUNC1(cdns, 1);
	FUNC8(cdns->dev);

	ret = FUNC3(cdns);
	if (ret)
		return ret;

	/*
	 * Because interrupt line can be shared with other components in
	 * driver it can't use IRQF_ONESHOT flag here.
	 */
	ret = FUNC6(cdns->dev, cdns->dev_irq,
					cdns3_device_irq_handler,
					cdns3_device_thread_irq_handler,
					IRQF_SHARED, FUNC5(cdns->dev), cdns);

	if (ret)
		goto err0;

	return 0;
err0:
	FUNC2(cdns);
	return ret;
}