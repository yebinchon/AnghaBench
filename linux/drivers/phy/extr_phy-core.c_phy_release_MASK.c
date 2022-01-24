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
struct phy {int /*<<< orphan*/  id; int /*<<< orphan*/  pwr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  phy_ida ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct phy* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev)
{
	struct phy *phy;

	phy = FUNC5(dev);
	FUNC1(dev, "releasing '%s'\n", FUNC0(dev));
	FUNC4(phy->pwr);
	FUNC2(&phy_ida, phy->id);
	FUNC3(phy);
}