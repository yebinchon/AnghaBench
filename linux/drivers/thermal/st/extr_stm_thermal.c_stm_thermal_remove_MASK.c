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
struct stm_thermal_sensor {int /*<<< orphan*/  th_dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct stm_thermal_sensor* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct stm_thermal_sensor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct stm_thermal_sensor *sensor = FUNC0(pdev);

	FUNC1(sensor);
	FUNC2(sensor->th_dev);
	FUNC3(&pdev->dev, sensor->th_dev);

	return 0;
}