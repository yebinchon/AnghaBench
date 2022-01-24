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
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct irq_data *data)
{
	int evtchn = FUNC2(data->irq);

	if (!FUNC0(evtchn))
		return;

	if (FUNC8(FUNC5(data)) &&
	    FUNC6(!FUNC4(data))) {
		int masked = FUNC7(evtchn);

		FUNC1(evtchn);

		FUNC3(data);

		if (!masked)
			FUNC9(evtchn);
	} else
		FUNC1(evtchn);
}