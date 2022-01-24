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
struct hdq_data {int /*<<< orphan*/  hdq_mutex; scalar_t__ hdq_usecount; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  omap_w1_master ; 
 struct hdq_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hdq_data *hdq_data = FUNC3(pdev);

	FUNC1(&hdq_data->hdq_mutex);

	if (hdq_data->hdq_usecount) {
		FUNC0(&pdev->dev, "removed when use count is not zero\n");
		FUNC2(&hdq_data->hdq_mutex);
		return -EBUSY;
	}

	FUNC2(&hdq_data->hdq_mutex);

	/* remove module dependency */
	FUNC4(&pdev->dev);

	FUNC5(&omap_w1_master);

	return 0;
}