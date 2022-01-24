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
struct musb {scalar_t__ nIrq; scalar_t__ irq_wake; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct musb*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 

__attribute__((used)) static void FUNC3(struct musb *musb)
{
	/* this has multiple entry modes. it handles fault cleanup after
	 * probe(), where things may be partially set up, as well as rmmod
	 * cleanup after everything's been de-activated.
	 */

	if (musb->nIrq >= 0) {
		if (musb->irq_wake)
			FUNC0(musb->nIrq);
		FUNC1(musb->nIrq, musb);
	}

	FUNC2(musb);
}