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
struct TYPE_2__ {int /*<<< orphan*/  has_clksel; } ;
struct s3c_fb {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  lcd_clk; TYPE_1__ variant; scalar_t__* windows; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int S3C_FB_MAX_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s3c_fb* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s3c_fb*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct s3c_fb *sfb = FUNC1(pdev);
	int win;

	FUNC3(sfb->dev);

	for (win = 0; win < S3C_FB_MAX_WIN; win++)
		if (sfb->windows[win])
			FUNC5(sfb, sfb->windows[win]);

	if (!sfb->variant.has_clksel)
		FUNC0(sfb->lcd_clk);

	FUNC0(sfb->bus_clk);

	FUNC4(sfb->dev);
	FUNC2(sfb->dev);

	return 0;
}