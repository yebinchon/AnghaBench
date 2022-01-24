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
 int /*<<< orphan*/  MACEISA_PAR_CTXA_IRQ ; 
 int /*<<< orphan*/  MACEISA_PAR_CTXB_IRQ ; 
 int /*<<< orphan*/  MACEISA_PAR_MERR_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
#if DEBUG_PARPORT_IP32
	free_irq(MACEISA_PAR_MERR_IRQ, NULL);
#endif
	FUNC0(MACEISA_PAR_CTXB_IRQ, NULL);
	FUNC0(MACEISA_PAR_CTXA_IRQ, NULL);
}