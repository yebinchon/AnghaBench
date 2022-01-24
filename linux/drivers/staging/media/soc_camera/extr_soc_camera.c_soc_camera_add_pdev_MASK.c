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
struct soc_camera_device {int dummy; } ;
struct soc_camera_async_client {struct platform_device* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*) ; 
 struct soc_camera_device* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static struct soc_camera_device *FUNC2(struct soc_camera_async_client *sasc)
{
	struct platform_device *pdev = sasc->pdev;
	int ret;

	ret = FUNC0(pdev);
	if (ret < 0 || !pdev->dev.driver)
		return NULL;

	return FUNC1(pdev);
}