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
struct dsi_data {int is_enabled; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct platform_device *pdev = FUNC4(dev);
	struct dsi_data *dsi = FUNC1(pdev);

	dsi->is_enabled = false;
	/* ensure the irq handler sees the is_enabled value */
	FUNC2();
	/* wait for current handler to finish before turning the DSI off */
	FUNC3(dsi->irq);

	FUNC0();

	return 0;
}