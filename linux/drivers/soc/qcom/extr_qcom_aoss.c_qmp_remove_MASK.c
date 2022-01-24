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
struct qmp {int /*<<< orphan*/  mbox_chan; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qmp* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmp*) ; 
 int /*<<< orphan*/  FUNC5 (struct qmp*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct qmp *qmp = FUNC1(pdev);

	FUNC5(qmp);
	FUNC4(qmp);
	FUNC3(qmp);

	FUNC2(qmp);
	FUNC0(qmp->mbox_chan);

	return 0;
}