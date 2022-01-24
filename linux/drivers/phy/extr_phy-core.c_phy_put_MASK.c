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
struct phy {int /*<<< orphan*/  dev; TYPE_1__* ops; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* release ) (struct phy*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct phy*) ; 

void FUNC6(struct phy *phy)
{
	if (!phy || FUNC0(phy))
		return;

	FUNC2(&phy->mutex);
	if (phy->ops->release)
		phy->ops->release(phy);
	FUNC3(&phy->mutex);

	FUNC1(phy->ops->owner);
	FUNC4(&phy->dev);
}