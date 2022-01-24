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
typedef  int u64 ;
typedef  int u32 ;
struct seq_file {struct dwc3_ep* private; } ;
struct dwc3_ep {int /*<<< orphan*/  number; struct dwc3* dwc; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GDBGEPINFO0 ; 
 int /*<<< orphan*/  DWC3_GDBGEPINFO1 ; 
 int /*<<< orphan*/  DWC3_GDBGLSPMUX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *unused)
{
	struct dwc3_ep		*dep = s->private;
	struct dwc3		*dwc = dep->dwc;
	unsigned long		flags;
	u64			ep_info;
	u32			lower_32_bits;
	u32			upper_32_bits;
	u32			reg;

	FUNC4(&dwc->lock, flags);
	reg = FUNC0(dep->number);
	FUNC2(dwc->regs, DWC3_GDBGLSPMUX, reg);

	lower_32_bits = FUNC1(dwc->regs, DWC3_GDBGEPINFO0);
	upper_32_bits = FUNC1(dwc->regs, DWC3_GDBGEPINFO1);

	ep_info = ((u64)upper_32_bits << 32) | lower_32_bits;
	FUNC3(s, "0x%016llx\n", ep_info);
	FUNC5(&dwc->lock, flags);

	return 0;
}