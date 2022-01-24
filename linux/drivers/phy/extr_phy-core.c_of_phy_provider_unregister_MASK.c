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
struct phy_provider {int /*<<< orphan*/  children; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_provider*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_provider_mutex ; 

void FUNC6(struct phy_provider *phy_provider)
{
	if (FUNC0(phy_provider))
		return;

	FUNC3(&phy_provider_mutex);
	FUNC2(&phy_provider->list);
	FUNC5(phy_provider->children);
	FUNC1(phy_provider);
	FUNC4(&phy_provider_mutex);
}