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
struct sx150x_pinctrl {int /*<<< orphan*/  lock; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 struct sx150x_pinctrl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct sx150x_pinctrl *pctl =
			FUNC0(FUNC1(d));

	FUNC2(&pctl->lock);
}