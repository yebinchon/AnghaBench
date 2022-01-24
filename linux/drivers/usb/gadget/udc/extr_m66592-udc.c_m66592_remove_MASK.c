#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct m66592 {int /*<<< orphan*/  clk; TYPE_2__* pdata; int /*<<< orphan*/  ep0_req; TYPE_1__* ep; int /*<<< orphan*/  reg; int /*<<< orphan*/  timer; int /*<<< orphan*/  gadget; } ;
struct TYPE_4__ {scalar_t__ on_chip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct m66592*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct m66592*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct m66592* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct m66592		*m66592 = FUNC7(pdev);

	FUNC9(&m66592->gadget);

	FUNC2(&m66592->timer);
	FUNC4(m66592->reg);
	FUNC3(FUNC8(pdev, 0), m66592);
	FUNC6(&m66592->ep[0].ep, m66592->ep0_req);
	if (m66592->pdata->on_chip) {
		FUNC0(m66592->clk);
		FUNC1(m66592->clk);
	}
	FUNC5(m66592);
	return 0;
}