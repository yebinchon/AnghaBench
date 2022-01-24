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
struct reset_controller_dev {int dummy; } ;
struct axs10x_rst {int /*<<< orphan*/  lock; int /*<<< orphan*/  regs_rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct axs10x_rst* FUNC3 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
			      unsigned long id)
{
	struct axs10x_rst *rst = FUNC3(rcdev);
	unsigned long flags;

	FUNC1(&rst->lock, flags);
	FUNC4(FUNC0(id), rst->regs_rst);
	FUNC2(&rst->lock, flags);

	return 0;
}