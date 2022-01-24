#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int comadj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  locomolcd_dev ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 TYPE_1__ sharpsl_param ; 

void FUNC6(int on)
{
	int comadj = sharpsl_param.comadj;
	unsigned long flags;

	FUNC1(flags);

	if (!locomolcd_dev) {
		FUNC0(flags);
		return;
	}

	/* read comadj */
	if (comadj == -1 && FUNC4())
		comadj = 128;
	if (comadj == -1 && FUNC5())
		comadj = 118;

	if (on)
		FUNC3(comadj);
	else
		FUNC2(comadj);

	FUNC0(flags);
}