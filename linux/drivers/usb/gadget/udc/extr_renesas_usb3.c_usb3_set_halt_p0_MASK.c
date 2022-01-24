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
struct renesas_usb3_ep {int halt; int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct renesas_usb3* FUNC1 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 

__attribute__((used)) static int FUNC4(struct renesas_usb3_ep *usb3_ep, bool halt)
{
	struct renesas_usb3 *usb3 = FUNC1(usb3_ep);

	if (FUNC0(usb3_ep->num))
		return -EINVAL;

	usb3_ep->halt = halt;
	if (halt)
		FUNC2(usb3);
	else
		FUNC3(usb3);

	return 0;
}