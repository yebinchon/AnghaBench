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
struct ast_vhub {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub*,char*) ; 
 int /*<<< orphan*/  VHUB_CTRL_MANUAL_REMOTE_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ast_vhub *vhub)
{
	u32 reg = FUNC1(vhub->regs + AST_VHUB_CTRL);
	FUNC0(vhub, "Waking up host !\n");
	reg |= VHUB_CTRL_MANUAL_REMOTE_WAKEUP;
	FUNC2(reg, vhub->regs + AST_VHUB_CTRL);
}