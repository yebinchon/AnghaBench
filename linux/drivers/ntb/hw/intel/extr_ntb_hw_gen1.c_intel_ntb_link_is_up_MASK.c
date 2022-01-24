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
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {int /*<<< orphan*/  lnk_sta; TYPE_1__* reg; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {scalar_t__ (* link_is_up ) (struct intel_ntb_dev*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int NTB_SPEED_NONE ; 
 int NTB_WIDTH_NONE ; 
 struct intel_ntb_dev* FUNC2 (struct ntb_dev*) ; 
 scalar_t__ FUNC3 (struct intel_ntb_dev*) ; 

u64 FUNC4(struct ntb_dev *ntb, enum ntb_speed *speed,
			 enum ntb_width *width)
{
	struct intel_ntb_dev *ndev = FUNC2(ntb);

	if (ndev->reg->link_is_up(ndev)) {
		if (speed)
			*speed = FUNC0(ndev->lnk_sta);
		if (width)
			*width = FUNC1(ndev->lnk_sta);
		return 1;
	} else {
		/* TODO MAYBE: is it possible to observe the link speed and
		 * width while link is training? */
		if (speed)
			*speed = NTB_SPEED_NONE;
		if (width)
			*width = NTB_WIDTH_NONE;
		return 0;
	}
}