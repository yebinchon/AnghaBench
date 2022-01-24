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
struct am35x_glue {int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  clk; int /*<<< orphan*/  phy; int /*<<< orphan*/  musb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct am35x_glue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct am35x_glue* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct am35x_glue	*glue = FUNC4(pdev);

	FUNC3(glue->musb);
	FUNC5(glue->phy);
	FUNC0(glue->clk);
	FUNC0(glue->phy_clk);
	FUNC1(glue->clk);
	FUNC1(glue->phy_clk);
	FUNC2(glue);

	return 0;
}