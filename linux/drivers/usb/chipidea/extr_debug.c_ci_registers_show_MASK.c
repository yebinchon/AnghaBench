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
struct seq_file {struct ci_hdrc* private; } ;
struct ci_hdrc {scalar_t__ is_otg; scalar_t__ in_lpm; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  OP_PORTSC ; 
 int /*<<< orphan*/  OP_USBCMD ; 
 int /*<<< orphan*/  OP_USBMODE ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, void *unused)
{
	struct ci_hdrc *ci = s->private;
	u32 tmp_reg;

	if (!ci || ci->in_lpm)
		return -EPERM;

	/* ------ Registers ----- */
	tmp_reg = FUNC1(ci);
	FUNC4(s, "USBINTR reg: %08x\n", tmp_reg);

	tmp_reg = FUNC2(ci);
	FUNC4(s, "USBSTS reg: %08x\n", tmp_reg);

	tmp_reg = FUNC0(ci, OP_USBMODE, ~0);
	FUNC4(s, "USBMODE reg: %08x\n", tmp_reg);

	tmp_reg = FUNC0(ci, OP_USBCMD, ~0);
	FUNC4(s, "USBCMD reg: %08x\n", tmp_reg);

	tmp_reg = FUNC0(ci, OP_PORTSC, ~0);
	FUNC4(s, "PORTSC reg: %08x\n", tmp_reg);

	if (ci->is_otg) {
		tmp_reg = FUNC3(ci, ~0);
		FUNC4(s, "OTGSC reg: %08x\n", tmp_reg);
	}

	return 0;
}