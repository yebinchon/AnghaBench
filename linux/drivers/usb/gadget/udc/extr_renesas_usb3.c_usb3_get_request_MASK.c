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
struct renesas_usb3_request {int dummy; } ;
struct renesas_usb3_ep {int dummy; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct renesas_usb3_request* FUNC0 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct renesas_usb3* FUNC3 (struct renesas_usb3_ep*) ; 

__attribute__((used)) static struct renesas_usb3_request *FUNC4(struct renesas_usb3_ep
						     *usb3_ep)
{
	struct renesas_usb3 *usb3 = FUNC3(usb3_ep);
	struct renesas_usb3_request *usb3_req;
	unsigned long flags;

	FUNC1(&usb3->lock, flags);
	usb3_req = FUNC0(usb3_ep);
	FUNC2(&usb3->lock, flags);

	return usb3_req;
}