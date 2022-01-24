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
struct ti_bandgap {int tshut_gpio; int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_bandgap_tshut_irq_handler ; 

__attribute__((used)) static int FUNC6(struct ti_bandgap *bgp,
				 struct platform_device *pdev)
{
	int gpio_nr = bgp->tshut_gpio;
	int status;

	/* Request for gpio_86 line */
	status = FUNC3(gpio_nr, "tshut");
	if (status < 0) {
		FUNC0(bgp->dev, "Could not request for TSHUT GPIO:%i\n", 86);
		return status;
	}
	status = FUNC1(gpio_nr);
	if (status) {
		FUNC0(bgp->dev, "Cannot set input TSHUT GPIO %d\n", gpio_nr);
		return status;
	}

	status = FUNC5(FUNC4(gpio_nr), ti_bandgap_tshut_irq_handler,
			     IRQF_TRIGGER_RISING, "tshut", NULL);
	if (status) {
		FUNC2(gpio_nr);
		FUNC0(bgp->dev, "request irq failed for TSHUT");
	}

	return 0;
}