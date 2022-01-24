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
struct renesas_usb3_ep {int /*<<< orphan*/  num; } ;
struct renesas_usb3 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 struct renesas_usb3_request* FUNC3 (struct renesas_usb3_ep*) ; 
 scalar_t__ FUNC4 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 

__attribute__((used)) static void FUNC8(struct renesas_usb3 *usb3,
				    struct renesas_usb3_ep *usb3_ep,
				    struct renesas_usb3_request *usb3_req,
				    int status)
{
	unsigned long flags;

	FUNC0(&usb3->lock, flags);
	if (FUNC4(usb3, usb3_ep->num))
		FUNC5(usb3);
	FUNC1(&usb3->lock, flags);

	FUNC2(usb3, usb3_ep->num);
	FUNC6(usb3_ep, usb3_req, status);

	/* get next usb3_req */
	usb3_req = FUNC3(usb3_ep);
	if (usb3_req)
		FUNC7(usb3_ep, usb3_req);
}