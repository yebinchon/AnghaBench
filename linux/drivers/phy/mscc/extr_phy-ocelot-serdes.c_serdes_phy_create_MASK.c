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
struct serdes_macro {int port; struct serdes_ctrl* ctrl; int /*<<< orphan*/  idx; } ;
struct serdes_ctrl {int /*<<< orphan*/  dev; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct phy*) ; 
 int FUNC1 (struct phy*) ; 
 struct serdes_macro* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct phy* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct phy*,struct serdes_macro*) ; 
 int /*<<< orphan*/  serdes_ops ; 

__attribute__((used)) static int FUNC5(struct serdes_ctrl *ctrl, u8 idx, struct phy **phy)
{
	struct serdes_macro *macro;

	*phy = FUNC3(ctrl->dev, NULL, &serdes_ops);
	if (FUNC0(*phy))
		return FUNC1(*phy);

	macro = FUNC2(ctrl->dev, sizeof(*macro), GFP_KERNEL);
	if (!macro)
		return -ENOMEM;

	macro->idx = idx;
	macro->ctrl = ctrl;
	macro->port = -1;

	FUNC4(*phy, macro);

	return 0;
}