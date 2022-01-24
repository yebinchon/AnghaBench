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
typedef  int /*<<< orphan*/  u32 ;
struct cdns_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cdns_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct cdns_pcie *pcie, u32 r)
{
	FUNC6(pcie, FUNC4(r), 0);
	FUNC6(pcie, FUNC5(r), 0);

	FUNC6(pcie, FUNC2(r), 0);
	FUNC6(pcie, FUNC3(r), 0);

	FUNC6(pcie, FUNC0(r), 0);
	FUNC6(pcie, FUNC1(r), 0);
}