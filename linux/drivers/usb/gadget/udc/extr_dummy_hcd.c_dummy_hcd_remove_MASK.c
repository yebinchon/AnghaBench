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
struct platform_device {int dummy; } ;
struct dummy {int /*<<< orphan*/ * ss_hcd; int /*<<< orphan*/ * hs_hcd; } ;
struct TYPE_2__ {struct dummy* dum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct dummy		*dum;

	dum = FUNC1(FUNC2(pdev))->dum;

	if (dum->ss_hcd) {
		FUNC4(FUNC0(dum->ss_hcd));
		FUNC3(FUNC0(dum->ss_hcd));
	}

	FUNC4(FUNC0(dum->hs_hcd));
	FUNC3(FUNC0(dum->hs_hcd));

	dum->hs_hcd = NULL;
	dum->ss_hcd = NULL;

	return 0;
}