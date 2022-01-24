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
typedef  int u32 ;
struct iproc_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPROC_PCIE_OARR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int OARR_VALID ; 
 int FUNC1 (struct iproc_pcie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct iproc_pcie *pcie,
					  int window_idx)
{
	u32 val;

	val = FUNC1(pcie, FUNC0(IPROC_PCIE_OARR0, window_idx));

	return !!(val & OARR_VALID);
}