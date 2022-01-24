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
struct rockchip_typec_phy {scalar_t__ mode; int /*<<< orphan*/  lock; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int MODE_DFP_USB ; 
 scalar_t__ MODE_DISCONNECT ; 
 int MODE_UFP_USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rockchip_typec_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_typec_phy*) ; 

__attribute__((used)) static int FUNC5(struct phy *phy)
{
	struct rockchip_typec_phy *tcphy = FUNC2(phy);

	FUNC0(&tcphy->lock);
	FUNC3(tcphy, false);

	if (tcphy->mode == MODE_DISCONNECT)
		goto unlock;

	tcphy->mode &= ~(MODE_UFP_USB | MODE_DFP_USB);
	if (tcphy->mode == MODE_DISCONNECT)
		FUNC4(tcphy);

unlock:
	FUNC1(&tcphy->lock);
	return 0;
}