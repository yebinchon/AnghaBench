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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  ufs_hba_mtk_vops ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int err;
	struct device *dev = &pdev->dev;

	/* perform generic probe */
	err = FUNC1(pdev, &ufs_hba_mtk_vops);
	if (err)
		FUNC0(dev, "probe failed %d\n", err);

	return err;
}