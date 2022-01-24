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
typedef  int /*<<< orphan*/  u8 ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct d7s {int /*<<< orphan*/  regs; scalar_t__ flipped; } ;

/* Variables and functions */
 int /*<<< orphan*/  D7S_FLIP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct d7s* d7s_device ; 
 int /*<<< orphan*/  d7s_users ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sol_compat ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *f)
{
	/* Reset flipped state to OBP default only if
	 * no other users have the device open and we
	 * are not operating in solaris-compat mode
	 */
	if (FUNC0(&d7s_users) && !sol_compat) {
		struct d7s *p = d7s_device;
		u8 regval = 0;

		regval = FUNC1(p->regs);
		if (p->flipped)
			regval |= D7S_FLIP;
		else
			regval &= ~D7S_FLIP;
		FUNC2(regval, p->regs);
	}

	return 0;
}