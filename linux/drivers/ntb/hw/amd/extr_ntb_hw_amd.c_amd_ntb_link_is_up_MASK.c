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
typedef  int u64 ;
struct ntb_dev {TYPE_1__* pdev; } ;
struct amd_ntb_dev {int /*<<< orphan*/  lnk_sta; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NTB_SPEED_NONE ; 
 int NTB_WIDTH_NONE ; 
 scalar_t__ FUNC2 (struct amd_ntb_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct amd_ntb_dev* FUNC4 (struct ntb_dev*) ; 

__attribute__((used)) static u64 FUNC5(struct ntb_dev *ntb,
			      enum ntb_speed *speed,
			      enum ntb_width *width)
{
	struct amd_ntb_dev *ndev = FUNC4(ntb);
	int ret = 0;

	if (FUNC2(ndev)) {
		if (speed)
			*speed = FUNC0(ndev->lnk_sta);
		if (width)
			*width = FUNC1(ndev->lnk_sta);

		FUNC3(&ntb->pdev->dev, "link is up.\n");

		ret = 1;
	} else {
		if (speed)
			*speed = NTB_SPEED_NONE;
		if (width)
			*width = NTB_WIDTH_NONE;

		FUNC3(&ntb->pdev->dev, "link is down.\n");
	}

	return ret;
}