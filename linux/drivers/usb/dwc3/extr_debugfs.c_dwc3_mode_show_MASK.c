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
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_GCTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  DWC3_GCTL_PRTCAP_DEVICE 130 
#define  DWC3_GCTL_PRTCAP_HOST 129 
#define  DWC3_GCTL_PRTCAP_OTG 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct dwc3		*dwc = s->private;
	unsigned long		flags;
	u32			reg;

	FUNC3(&dwc->lock, flags);
	reg = FUNC1(dwc->regs, DWC3_GCTL);
	FUNC4(&dwc->lock, flags);

	switch (FUNC0(reg)) {
	case DWC3_GCTL_PRTCAP_HOST:
		FUNC2(s, "host\n");
		break;
	case DWC3_GCTL_PRTCAP_DEVICE:
		FUNC2(s, "device\n");
		break;
	case DWC3_GCTL_PRTCAP_OTG:
		FUNC2(s, "otg\n");
		break;
	default:
		FUNC2(s, "UNKNOWN %08x\n", FUNC0(reg));
	}

	return 0;
}