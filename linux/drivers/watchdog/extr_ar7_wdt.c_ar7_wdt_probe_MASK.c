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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ar7_regs_wdt ; 
 int /*<<< orphan*/ * ar7_wdt ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ar7_wdt_miscdev ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  margin ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  prescale_value ; 
 int /*<<< orphan*/ * vbus_clk ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int rc;

	ar7_regs_wdt =
		FUNC9(pdev, IORESOURCE_MEM, "regs");
	ar7_wdt = FUNC7(&pdev->dev, ar7_regs_wdt);
	if (FUNC0(ar7_wdt))
		return FUNC1(ar7_wdt);

	vbus_clk = FUNC5(NULL, "vbus");
	if (FUNC0(vbus_clk)) {
		FUNC10("could not get vbus clock\n");
		return FUNC1(vbus_clk);
	}

	FUNC2();
	FUNC3(prescale_value);
	FUNC4(margin);

	rc = FUNC8(&ar7_wdt_miscdev);
	if (rc) {
		FUNC10("unable to register misc device\n");
		goto out;
	}
	return 0;

out:
	FUNC6(vbus_clk);
	vbus_clk = NULL;
	return rc;
}