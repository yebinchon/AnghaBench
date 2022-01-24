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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pll; scalar_t__ audio_pdev; } ;

/* Variables and functions */
 TYPE_1__ hdmi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC4(dev);

	if (hdmi.audio_pdev)
		FUNC2(hdmi.audio_pdev);

	FUNC1(pdev);

	FUNC0(&hdmi.pll);

	FUNC3(&pdev->dev);
}