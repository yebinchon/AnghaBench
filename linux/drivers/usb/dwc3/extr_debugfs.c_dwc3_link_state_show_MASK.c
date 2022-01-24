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
typedef  int u8 ;
typedef  int u32 ;
struct seq_file {struct dwc3* private; } ;
struct dwc3 {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;
typedef  enum dwc3_link_state { ____Placeholder_dwc3_link_state } dwc3_link_state ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DSTS ; 
 int DWC3_DSTS_CONNECTSPD ; 
 int DWC3_DSTS_SUPERSPEED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DWC3_GSTS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ DWC3_GSTS_CURMOD_DEVICE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct seq_file *s, void *unused)
{
	struct dwc3		*dwc = s->private;
	unsigned long		flags;
	enum dwc3_link_state	state;
	u32			reg;
	u8			speed;

	FUNC7(&dwc->lock, flags);
	reg = FUNC4(dwc->regs, DWC3_GSTS);
	if (FUNC1(reg) != DWC3_GSTS_CURMOD_DEVICE) {
		FUNC6(s, "Not available\n");
		FUNC8(&dwc->lock, flags);
		return 0;
	}

	reg = FUNC4(dwc->regs, DWC3_DSTS);
	state = FUNC0(reg);
	speed = reg & DWC3_DSTS_CONNECTSPD;

	FUNC5(s, "%s\n", (speed >= DWC3_DSTS_SUPERSPEED) ?
		   FUNC3(state) :
		   FUNC2(state));
	FUNC8(&dwc->lock, flags);

	return 0;
}