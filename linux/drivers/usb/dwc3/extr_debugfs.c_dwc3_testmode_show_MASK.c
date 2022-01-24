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
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DCTL ; 
 int DWC3_DCTL_TSTCTRL_MASK ; 
#define  TEST_FORCE_EN 132 
#define  TEST_J 131 
#define  TEST_K 130 
#define  TEST_PACKET 129 
#define  TEST_SE0_NAK 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *unused)
{
	struct dwc3		*dwc = s->private;
	unsigned long		flags;
	u32			reg;

	FUNC2(&dwc->lock, flags);
	reg = FUNC0(dwc->regs, DWC3_DCTL);
	reg &= DWC3_DCTL_TSTCTRL_MASK;
	reg >>= 1;
	FUNC3(&dwc->lock, flags);

	switch (reg) {
	case 0:
		FUNC1(s, "no test\n");
		break;
	case TEST_J:
		FUNC1(s, "test_j\n");
		break;
	case TEST_K:
		FUNC1(s, "test_k\n");
		break;
	case TEST_SE0_NAK:
		FUNC1(s, "test_se0_nak\n");
		break;
	case TEST_PACKET:
		FUNC1(s, "test_packet\n");
		break;
	case TEST_FORCE_EN:
		FUNC1(s, "test_force_enable\n");
		break;
	default:
		FUNC1(s, "UNKNOWN %d\n", reg);
	}

	return 0;
}