#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  devt; } ;
struct telem_device_data {TYPE_1__ dev; int /*<<< orphan*/  cdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct telem_device_data* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  telem_ida ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct telem_device_data *dev_data = FUNC3(pdev);

	FUNC1(&dev_data->cdev, &dev_data->dev);
	FUNC4(&dev_data->dev);
	FUNC2(&telem_ida, FUNC0(dev_data->dev.devt));

	return 0;
}