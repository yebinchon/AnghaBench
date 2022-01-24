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
struct usb_gadget {int dummy; } ;
struct m66592 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  M66592_DPRPU ; 
 int /*<<< orphan*/  M66592_SYSCFG ; 
 struct m66592* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct m66592*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct m66592*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget, int is_on)
{
	struct m66592 *m66592 = FUNC0(gadget);
	unsigned long flags;

	FUNC3(&m66592->lock, flags);
	if (is_on)
		FUNC2(m66592, M66592_DPRPU, M66592_SYSCFG);
	else
		FUNC1(m66592, M66592_DPRPU, M66592_SYSCFG);
	FUNC4(&m66592->lock, flags);

	return 0;
}