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
struct ufs_hisi_host {int /*<<< orphan*/  ufs_sys_ctrl; TYPE_1__* hba; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct ufs_hisi_host *host)
{
	struct device *dev = host->hba->dev;
	struct platform_device *pdev = FUNC3(dev);

	/* get resource of ufs sys ctrl */
	host->ufs_sys_ctrl = FUNC2(pdev, 1);
	if (FUNC0(host->ufs_sys_ctrl))
		return FUNC1(host->ufs_sys_ctrl);

	return 0;
}