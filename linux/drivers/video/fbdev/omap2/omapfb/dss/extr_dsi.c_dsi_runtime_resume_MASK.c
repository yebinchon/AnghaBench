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
struct dsi_data {int is_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 () ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct platform_device *pdev = FUNC3(dev);
	struct dsi_data *dsi = FUNC1(pdev);
	int r;

	r = FUNC0();
	if (r)
		return r;

	dsi->is_enabled = true;
	/* ensure the irq handler sees the is_enabled value */
	FUNC2();

	return 0;
}