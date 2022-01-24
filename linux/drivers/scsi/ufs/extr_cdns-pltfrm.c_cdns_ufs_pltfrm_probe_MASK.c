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
struct ufs_hba_variant_ops {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdns_ufs_of_match ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*,struct ufs_hba_variant_ops*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int err;
	const struct of_device_id *of_id;
	struct ufs_hba_variant_ops *vops;
	struct device *dev = &pdev->dev;

	of_id = FUNC1(cdns_ufs_of_match, dev->of_node);
	vops = (struct ufs_hba_variant_ops *)of_id->data;

	/* Perform generic probe */
	err = FUNC2(pdev, vops);
	if (err)
		FUNC0(dev, "ufshcd_pltfrm_init() failed %d\n", err);

	return err;
}