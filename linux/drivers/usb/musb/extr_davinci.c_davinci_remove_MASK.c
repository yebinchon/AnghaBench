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
struct davinci_glue {int /*<<< orphan*/  clk; int /*<<< orphan*/  musb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct davinci_glue* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct davinci_glue		*glue = FUNC2(pdev);

	FUNC1(glue->musb);
	FUNC3();
	FUNC0(glue->clk);

	return 0;
}