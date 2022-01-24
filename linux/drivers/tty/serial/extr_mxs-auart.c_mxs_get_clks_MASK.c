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
struct mxs_auart_port {void* clk_ahb; int /*<<< orphan*/ * dev; void* clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mxs_auart_port*) ; 

__attribute__((used)) static int FUNC10(struct mxs_auart_port *s,
			struct platform_device *pdev)
{
	int err;

	if (!FUNC9(s)) {
		s->clk = FUNC8(&pdev->dev, NULL);
		return FUNC2(s->clk);
	}

	s->clk = FUNC8(s->dev, "mod");
	if (FUNC0(s->clk)) {
		FUNC7(s->dev, "Failed to get \"mod\" clk\n");
		return FUNC1(s->clk);
	}

	s->clk_ahb = FUNC8(s->dev, "ahb");
	if (FUNC0(s->clk_ahb)) {
		FUNC7(s->dev, "Failed to get \"ahb\" clk\n");
		return FUNC1(s->clk_ahb);
	}

	err = FUNC5(s->clk_ahb);
	if (err) {
		FUNC7(s->dev, "Failed to enable ahb_clk!\n");
		return err;
	}

	err = FUNC6(s->clk, FUNC4(s->clk_ahb));
	if (err) {
		FUNC7(s->dev, "Failed to set rate!\n");
		goto disable_clk_ahb;
	}

	err = FUNC5(s->clk);
	if (err) {
		FUNC7(s->dev, "Failed to enable clk!\n");
		goto disable_clk_ahb;
	}

	return 0;

disable_clk_ahb:
	FUNC3(s->clk_ahb);
	return err;
}