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
struct tegra_vde {int /*<<< orphan*/ * domain; int /*<<< orphan*/  group; int /*<<< orphan*/  iova; int /*<<< orphan*/  iova_resv_static_addresses; int /*<<< orphan*/  iova_resv_last_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct tegra_vde *vde)
{
	if (vde->domain) {
		FUNC0(&vde->iova, vde->iova_resv_last_page);
		FUNC0(&vde->iova, vde->iova_resv_static_addresses);
		FUNC1(vde->domain, vde->group);
		FUNC5(&vde->iova);
		FUNC4();
		FUNC2(vde->domain);
		FUNC3(vde->group);

		vde->domain = NULL;
	}
}