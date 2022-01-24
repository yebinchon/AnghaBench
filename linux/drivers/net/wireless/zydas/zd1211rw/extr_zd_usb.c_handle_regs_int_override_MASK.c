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
struct TYPE_2__ {int /*<<< orphan*/  completion; } ;
struct zd_usb_interrupt {int read_regs_int_overridden; int /*<<< orphan*/  lock; TYPE_1__ read_regs; int /*<<< orphan*/  read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct urb {struct zd_usb* context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct urb *urb)
{
	struct zd_usb *usb = urb->context;
	struct zd_usb_interrupt *intr = &usb->intr;
	unsigned long flags;

	FUNC3(&intr->lock, flags);
	if (FUNC0(&intr->read_regs_enabled)) {
		FUNC1(&intr->read_regs_enabled, 0);
		intr->read_regs_int_overridden = 1;
		FUNC2(&intr->read_regs.completion);
	}
	FUNC4(&intr->lock, flags);
}