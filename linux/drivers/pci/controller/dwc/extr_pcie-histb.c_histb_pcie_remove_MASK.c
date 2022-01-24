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
struct platform_device {int dummy; } ;
struct histb_pcie {scalar_t__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct histb_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct histb_pcie* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct histb_pcie *hipcie = FUNC2(pdev);

	FUNC0(hipcie);

	if (hipcie->phy)
		FUNC1(hipcie->phy);

	return 0;
}