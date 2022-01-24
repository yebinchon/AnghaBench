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
typedef  scalar_t__ u16 ;
struct iproc_pcie {scalar_t__ base; } ;
typedef  enum iproc_pcie_reg { ____Placeholder_iproc_pcie_reg } iproc_pcie_reg ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct iproc_pcie*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct iproc_pcie *pcie,
					enum iproc_pcie_reg reg, u32 val)
{
	u16 offset = FUNC1(pcie, reg);

	if (FUNC0(offset))
		return;

	FUNC2(val, pcie->base + offset);
}