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
struct soc_camera_desc {int dummy; } ;
struct soc_camera_async_client {struct platform_device* pdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAP_MAX_NUM ; 
 int /*<<< orphan*/  device_map ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct platform_device*,struct soc_camera_desc*,int) ; 
 struct platform_device* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct soc_camera_desc *sdesc,
			       struct soc_camera_async_client *sasc)
{
	struct platform_device *pdev;
	int ret, i;

	FUNC1(&list_lock);
	i = FUNC0(device_map, MAP_MAX_NUM);
	if (i < MAP_MAX_NUM)
		FUNC6(i, device_map);
	FUNC2(&list_lock);
	if (i >= MAP_MAX_NUM)
		return -ENOMEM;

	pdev = FUNC4("soc-camera-pdrv", i);
	if (!pdev)
		return -ENOMEM;

	ret = FUNC3(pdev, sdesc, sizeof(*sdesc));
	if (ret < 0) {
		FUNC5(pdev);
		return ret;
	}

	sasc->pdev = pdev;

	return 0;
}