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
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct d7s {int /*<<< orphan*/  regs; scalar_t__ flipped; } ;

/* Variables and functions */
 int /*<<< orphan*/  D7S_FLIP ; 
 int /*<<< orphan*/  d7s_miscdev ; 
 struct d7s* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ sol_compat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct d7s *p = FUNC0(&op->dev);
	u8 regs = FUNC3(p->regs);

	/* Honor OBP d7s-flipped? unless operating in solaris-compat mode */
	if (sol_compat) {
		if (p->flipped)
			regs |= D7S_FLIP;
		else
			regs &= ~D7S_FLIP;
		FUNC4(regs, p->regs);
	}

	FUNC1(&d7s_miscdev);
	FUNC2(&op->resource[0], p->regs, sizeof(u8));

	return 0;
}