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
struct dwc3_ep {int /*<<< orphan*/  resource_index; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DEPCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct dwc3_ep *dep)
{
	u32			res_id;

	res_id = FUNC1(dep->regs, DWC3_DEPCMD);
	dep->resource_index = FUNC0(res_id);
}