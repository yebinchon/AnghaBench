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

/* Variables and functions */
 int /*<<< orphan*/  BIT_GPIO12 ; 
 int /*<<< orphan*/  VX855_GPI_STATUS_CHG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* irq status will appear in PMIO_Rx50[6] (RW1C) on gpio12 */
	FUNC0(BIT_GPIO12, VX855_GPI_STATUS_CHG);
}