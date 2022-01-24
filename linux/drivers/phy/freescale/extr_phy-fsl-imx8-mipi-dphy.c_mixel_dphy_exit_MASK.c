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
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_CM ; 
 int /*<<< orphan*/  DPHY_CN ; 
 int /*<<< orphan*/  DPHY_CO ; 
 int /*<<< orphan*/  FUNC0 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct phy *phy)
{
	FUNC0(phy, 0, DPHY_CM);
	FUNC0(phy, 0, DPHY_CN);
	FUNC0(phy, 0, DPHY_CO);

	return 0;
}