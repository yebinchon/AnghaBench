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
struct ci_hdrc {int /*<<< orphan*/  dev; int /*<<< orphan*/  wq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ci_hdrc*) ; 
 scalar_t__ FUNC2 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  ci_otg_work ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct ci_hdrc *ci)
{
	FUNC0(&ci->work, ci_otg_work);
	ci->wq = FUNC3("ci_otg");
	if (!ci->wq) {
		FUNC4(ci->dev, "can't create workqueue\n");
		return -ENODEV;
	}

	if (FUNC2(ci))
		return FUNC1(ci);

	return 0;
}