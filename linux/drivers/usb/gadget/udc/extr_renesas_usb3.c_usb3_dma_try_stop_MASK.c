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
struct renesas_usb3_ep {int /*<<< orphan*/  num; int /*<<< orphan*/  dma; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3_ep*) ; 
 int FUNC5 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 struct renesas_usb3* FUNC6 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct renesas_usb3_ep *usb3_ep,
			     struct renesas_usb3_request *usb3_req)
{
	struct renesas_usb3 *usb3 = FUNC6(usb3_ep);
	unsigned long flags;
	int status = 0;

	FUNC0(&usb3->lock, flags);
	if (!usb3_ep->dma)
		goto out;

	if (!FUNC7(usb3, usb3_ep->num))
		FUNC2(usb3);
	FUNC4(usb3_ep);
	status = FUNC5(usb3_ep, usb3_req);
	FUNC3(usb3_ep, usb3_req);

out:
	FUNC1(&usb3->lock, flags);
	return status;
}