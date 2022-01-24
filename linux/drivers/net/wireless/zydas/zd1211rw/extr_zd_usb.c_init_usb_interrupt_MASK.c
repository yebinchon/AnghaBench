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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  cr_int_addr; int /*<<< orphan*/  completion; } ;
struct zd_usb_interrupt {TYPE_1__ read_regs; int /*<<< orphan*/  read_regs_enabled; int /*<<< orphan*/  interval; int /*<<< orphan*/  lock; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;

/* Variables and functions */
 scalar_t__ CR_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zd_usb*) ; 

__attribute__((used)) static inline void FUNC6(struct zd_usb *usb)
{
	struct zd_usb_interrupt *intr = &usb->intr;

	FUNC4(&intr->lock);
	intr->interval = FUNC3(FUNC5(usb));
	FUNC2(&intr->read_regs.completion);
	FUNC0(&intr->read_regs_enabled, 0);
	intr->read_regs.cr_int_addr = FUNC1((u16)CR_INTERRUPT);
}