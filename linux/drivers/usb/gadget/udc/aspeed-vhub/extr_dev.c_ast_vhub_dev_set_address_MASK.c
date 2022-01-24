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
typedef  int /*<<< orphan*/  u32 ;
struct ast_vhub_dev {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_DEV_EN_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VHUB_DEV_EN_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ast_vhub_dev *d, u8 addr)
{
	u32 reg;

	FUNC0(d, "SET_ADDRESS: Got address %x\n", addr);

	reg = FUNC2(d->regs + AST_VHUB_DEV_EN_CTRL);
	reg &= ~VHUB_DEV_EN_ADDR_MASK;
	reg |= FUNC1(addr);
	FUNC3(reg, d->regs + AST_VHUB_DEV_EN_CTRL);
}