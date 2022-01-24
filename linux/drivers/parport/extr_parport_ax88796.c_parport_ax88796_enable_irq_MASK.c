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
struct parport {int /*<<< orphan*/  irq; } ;
struct ax_drvdata {int irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct ax_drvdata* FUNC3 (struct parport*) ; 

__attribute__((used)) static void
FUNC4(struct parport *p)
{
	struct ax_drvdata *dd = FUNC3(p);
	unsigned long flags;

	FUNC2(flags);
	if (!dd->irq_enabled) {
		FUNC0(p->irq);
		dd->irq_enabled = 1;
	}
	FUNC1(flags);
}