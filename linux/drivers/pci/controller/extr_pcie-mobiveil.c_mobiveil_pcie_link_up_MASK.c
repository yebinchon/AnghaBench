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
struct mobiveil_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LTSSM_STATUS ; 
 int LTSSM_STATUS_L0 ; 
 int LTSSM_STATUS_L0_MASK ; 
 int FUNC0 (struct mobiveil_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct mobiveil_pcie *pcie)
{
	return (FUNC0(pcie, LTSSM_STATUS) &
		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
}