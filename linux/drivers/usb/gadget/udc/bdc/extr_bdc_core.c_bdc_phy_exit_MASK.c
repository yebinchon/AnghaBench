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
struct bdc {int num_phys; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bdc *bdc)
{
	int phy_num;

	for (phy_num = 0; phy_num < bdc->num_phys; phy_num++) {
		FUNC1(bdc->phys[phy_num]);
		FUNC0(bdc->phys[phy_num]);
	}
}