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
 int /*<<< orphan*/  DWC3_GSTS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
#define  DWC3_GSTS_CURMOD_DEVICE 129 
#define  DWC3_GSTS_CURMOD_HOST 128 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *unused)
{
	struct dwc3		*dwc = s->private;
	unsigned int		current_mode;
	unsigned long		flags;
	u32			reg;

	FUNC5(&dwc->lock, flags);
	reg = FUNC3(dwc->regs, DWC3_GSTS);
	current_mode = FUNC0(reg);

	switch (current_mode) {
	case DWC3_GSTS_CURMOD_HOST:
		FUNC2(s);
		break;
	case DWC3_GSTS_CURMOD_DEVICE:
		FUNC1(s);
		break;
	default:
		FUNC4(s, "Mode is unknown, no LSP register printed\n");
		break;
	}
	FUNC6(&dwc->lock, flags);

	return 0;
}