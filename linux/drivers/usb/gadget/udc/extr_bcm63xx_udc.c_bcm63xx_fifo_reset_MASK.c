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
struct bcm63xx_udc {int dummy; } ;

/* Variables and functions */
 int BCM63XX_NUM_FIFO_PAIRS ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,int) ; 

__attribute__((used)) static void FUNC1(struct bcm63xx_udc *udc)
{
	int i;

	for (i = 0; i < BCM63XX_NUM_FIFO_PAIRS; i++)
		FUNC0(udc, i);
}