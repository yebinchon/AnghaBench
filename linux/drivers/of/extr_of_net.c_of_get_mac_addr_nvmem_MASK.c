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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 void const* FUNC0 (int) ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 struct platform_device* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const void *FUNC5(struct device_node *np)
{
	int ret;
	const void *mac;
	u8 nvmem_mac[ETH_ALEN];
	struct platform_device *pdev = FUNC3(np);

	if (!pdev)
		return FUNC0(-ENODEV);

	ret = FUNC2(&pdev->dev, &nvmem_mac);
	if (ret) {
		FUNC4(&pdev->dev);
		return FUNC0(ret);
	}

	mac = FUNC1(&pdev->dev, nvmem_mac, ETH_ALEN, GFP_KERNEL);
	FUNC4(&pdev->dev);
	if (!mac)
		return FUNC0(-ENOMEM);

	return mac;
}