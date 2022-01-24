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
struct zd_usb_interrupt {int /*<<< orphan*/  lock; int /*<<< orphan*/  read_regs_enabled; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct zd_usb *usb)
{
	struct zd_usb_interrupt *intr = &usb->intr;

	FUNC1(&intr->lock);
	FUNC0(&intr->read_regs_enabled, 0);
	FUNC2(&intr->lock);
}