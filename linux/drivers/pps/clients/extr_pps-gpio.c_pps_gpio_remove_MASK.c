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
struct pps_gpio_device_data {int /*<<< orphan*/  irq; scalar_t__ echo_pin; int /*<<< orphan*/  echo_timer; int /*<<< orphan*/  pps; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct pps_gpio_device_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct pps_gpio_device_data *data = FUNC3(pdev);

	FUNC4(data->pps);
	if (data->echo_pin) {
		FUNC0(&data->echo_timer);
		/* reset echo pin in any case */
		FUNC2(data->echo_pin, 0);
	}
	FUNC1(&pdev->dev, "removed IRQ %d as PPS source\n", data->irq);
	return 0;
}