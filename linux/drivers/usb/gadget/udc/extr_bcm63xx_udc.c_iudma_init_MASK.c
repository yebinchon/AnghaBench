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
struct bcm63xx_udc {int /*<<< orphan*/ * iudma; } ;

/* Variables and functions */
 int BCM63XX_NUM_IUDMA ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ENETDMA_CFG_EN_MASK ; 
 int /*<<< orphan*/  ENETDMA_CFG_REG ; 
 int /*<<< orphan*/  ENETDMA_GLB_IRQMASK_REG ; 
 int FUNC1 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bcm63xx_udc *udc)
{
	int i, rc;

	FUNC3(udc, ENETDMA_CFG_EN_MASK, ENETDMA_CFG_REG);

	for (i = 0; i < BCM63XX_NUM_IUDMA; i++) {
		rc = FUNC1(udc, i);
		if (rc)
			return rc;
		FUNC2(udc, &udc->iudma[i]);
	}

	FUNC3(udc, FUNC0(BCM63XX_NUM_IUDMA)-1, ENETDMA_GLB_IRQMASK_REG);
	return 0;
}