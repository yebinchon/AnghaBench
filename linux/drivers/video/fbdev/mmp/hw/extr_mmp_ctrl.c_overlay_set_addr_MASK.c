#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* phys; } ;
struct mmp_overlay {TYPE_1__ addr; int /*<<< orphan*/  path; } ;
struct mmp_addr {int /*<<< orphan*/ * phys; } ;
struct lcd_regs {int /*<<< orphan*/  g_0; int /*<<< orphan*/  v_v0; int /*<<< orphan*/  v_u0; int /*<<< orphan*/  v_y0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct mmp_addr*,int) ; 
 scalar_t__ FUNC1 (struct mmp_overlay*) ; 
 struct lcd_regs* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mmp_overlay *overlay, struct mmp_addr *addr)
{
	struct lcd_regs *regs = FUNC2(overlay->path);

	/* FIXME: assert addr supported */
	FUNC0(&overlay->addr, addr, sizeof(struct mmp_addr));

	if (FUNC1(overlay)) {
		FUNC3(addr->phys[0], &regs->v_y0);
		FUNC3(addr->phys[1], &regs->v_u0);
		FUNC3(addr->phys[2], &regs->v_v0);
	} else
		FUNC3(addr->phys[0], &regs->g_0);

	return overlay->addr.phys[0];
}