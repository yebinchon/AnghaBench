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
struct ufs_vreg_info {int /*<<< orphan*/  vccq2; int /*<<< orphan*/  vccq; int /*<<< orphan*/  vcc; int /*<<< orphan*/  vdd_hba; } ;
struct ufs_hba {struct ufs_vreg_info vreg_info; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct ufs_hba *hba)
{
	int err;
	struct device *dev = hba->dev;
	struct ufs_vreg_info *info = &hba->vreg_info;

	err = FUNC0(dev, "vdd-hba", &info->vdd_hba);
	if (err)
		goto out;

	err = FUNC0(dev, "vcc", &info->vcc);
	if (err)
		goto out;

	err = FUNC0(dev, "vccq", &info->vccq);
	if (err)
		goto out;

	err = FUNC0(dev, "vccq2", &info->vccq2);
out:
	return err;
}