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
struct ufs_vreg_info {int /*<<< orphan*/  vcc; int /*<<< orphan*/  vccq; int /*<<< orphan*/  vccq2; } ;
struct ufs_hba {struct ufs_vreg_info vreg_info; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ufs_hba *hba, bool on)
{
	int ret = 0;
	struct device *dev = hba->dev;
	struct ufs_vreg_info *info = &hba->vreg_info;

	ret = FUNC0(dev, info->vcc, on);
	if (ret)
		goto out;

	ret = FUNC0(dev, info->vccq, on);
	if (ret)
		goto out;

	ret = FUNC0(dev, info->vccq2, on);
	if (ret)
		goto out;

out:
	if (ret) {
		FUNC0(dev, info->vccq2, false);
		FUNC0(dev, info->vccq, false);
		FUNC0(dev, info->vcc, false);
	}
	return ret;
}