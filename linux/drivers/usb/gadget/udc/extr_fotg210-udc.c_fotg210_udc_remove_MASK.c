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
struct fotg210_udc {struct fotg210_udc** ep; int /*<<< orphan*/  ep0_req; int /*<<< orphan*/  reg; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int FOTG210_MAX_NUM_EP ; 
 int /*<<< orphan*/  FUNC0 (struct fotg210_udc***,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fotg210_udc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_udc*) ; 
 struct fotg210_udc* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fotg210_udc *fotg210 = FUNC4(pdev);
	int i;

	FUNC6(&fotg210->gadget);
	FUNC2(fotg210->reg);
	FUNC1(FUNC5(pdev, 0), fotg210);

	FUNC0(&fotg210->ep[0]->ep, fotg210->ep0_req);
	for (i = 0; i < FOTG210_MAX_NUM_EP; i++)
		FUNC3(fotg210->ep[i]);
	FUNC3(fotg210);

	return 0;
}