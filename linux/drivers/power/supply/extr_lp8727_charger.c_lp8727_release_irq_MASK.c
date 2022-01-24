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
struct lp8727_chg {scalar_t__ irq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct lp8727_chg*) ; 

__attribute__((used)) static void FUNC2(struct lp8727_chg *pchg)
{
	FUNC0(&pchg->work);

	if (pchg->irq)
		FUNC1(pchg->irq, pchg);
}