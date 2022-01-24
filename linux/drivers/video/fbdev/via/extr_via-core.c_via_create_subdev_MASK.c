#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct viafb_subdev_info {TYPE_3__* platdev; int /*<<< orphan*/  name; } ;
struct viafb_dev {TYPE_2__* pdev; } ;
struct TYPE_6__ {struct viafb_dev* platform_data; int /*<<< orphan*/ * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(struct viafb_dev *vdev,
			     struct viafb_subdev_info *info)
{
	int ret;

	info->platdev = FUNC2(info->name, -1);
	if (!info->platdev) {
		FUNC0(&vdev->pdev->dev, "Unable to allocate pdev %s\n",
			info->name);
		return -ENOMEM;
	}
	info->platdev->dev.parent = &vdev->pdev->dev;
	info->platdev->dev.platform_data = vdev;
	ret = FUNC1(info->platdev);
	if (ret) {
		FUNC0(&vdev->pdev->dev, "Unable to add pdev %s\n",
				info->name);
		FUNC3(info->platdev);
		info->platdev = NULL;
	}
	return ret;
}