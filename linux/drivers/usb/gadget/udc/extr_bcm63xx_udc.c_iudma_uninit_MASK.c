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
 int /*<<< orphan*/  ENETDMA_CFG_REG ; 
 int /*<<< orphan*/  ENETDMA_GLB_IRQMASK_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bcm63xx_udc *udc)
{
	int i;

	FUNC1(udc, 0, ENETDMA_GLB_IRQMASK_REG);

	for (i = 0; i < BCM63XX_NUM_IUDMA; i++)
		FUNC0(udc, &udc->iudma[i]);

	FUNC1(udc, 0, ENETDMA_CFG_REG);
}