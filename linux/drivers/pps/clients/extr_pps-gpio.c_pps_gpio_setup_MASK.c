#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pps_gpio_device_data {int echo_active_ms; int assert_falling_edge; scalar_t__ echo_pin; scalar_t__ gpio_pin; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 int FUNC6 (struct device_node*,char*,int*) ; 
 struct pps_gpio_device_data* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct pps_gpio_device_data *data = FUNC7(pdev);
	struct device_node *np = pdev->dev.of_node;
	int ret;
	u32 value;

	data->gpio_pin = FUNC3(&pdev->dev,
		NULL,	/* request "gpios" */
		GPIOD_IN);
	if (FUNC0(data->gpio_pin)) {
		FUNC2(&pdev->dev,
			"failed to request PPS GPIO\n");
		return FUNC1(data->gpio_pin);
	}

	data->echo_pin = FUNC4(&pdev->dev,
			"echo",
			GPIOD_OUT_LOW);
	if (data->echo_pin) {
		if (FUNC0(data->echo_pin)) {
			FUNC2(&pdev->dev, "failed to request ECHO GPIO\n");
			return FUNC1(data->echo_pin);
		}

		ret = FUNC6(np,
			"echo-active-ms",
			&value);
		if (ret) {
			FUNC2(&pdev->dev,
				"failed to get echo-active-ms from OF\n");
			return ret;
		}
		data->echo_active_ms = value;
		/* sanity check on echo_active_ms */
		if (!data->echo_active_ms || data->echo_active_ms > 999) {
			FUNC2(&pdev->dev,
				"echo-active-ms: %u - bad value from OF\n",
				data->echo_active_ms);
			return -EINVAL;
		}
	}

	if (FUNC5(np, "assert-falling-edge"))
		data->assert_falling_edge = true;
	return 0;
}