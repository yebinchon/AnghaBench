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
struct platform_device {int dummy; } ;
struct fusb300 {struct fusb300** ep; int /*<<< orphan*/  ep0_req; int /*<<< orphan*/  reg; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int FUSB300_MAX_NUM_EP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fusb300*) ; 
 int /*<<< orphan*/  FUNC1 (struct fusb300***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fusb300*) ; 
 struct fusb300* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fusb300 *fusb300 = FUNC4(pdev);
	int i;

	FUNC6(&fusb300->gadget);
	FUNC2(fusb300->reg);
	FUNC0(FUNC5(pdev, 0), fusb300);

	FUNC1(&fusb300->ep[0]->ep, fusb300->ep0_req);
	for (i = 0; i < FUSB300_MAX_NUM_EP; i++)
		FUNC3(fusb300->ep[i]);
	FUNC3(fusb300);

	return 0;
}