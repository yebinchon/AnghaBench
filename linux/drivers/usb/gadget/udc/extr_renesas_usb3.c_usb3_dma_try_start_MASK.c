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
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 scalar_t__ FUNC1 (struct renesas_usb3_ep*,struct renesas_usb3_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 struct renesas_usb3* FUNC4 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  use_dma ; 

__attribute__((used)) static bool FUNC7(struct renesas_usb3_ep *usb3_ep,
			       struct renesas_usb3_request *usb3_req)
{
	struct renesas_usb3 *usb3 = FUNC4(usb3_ep);

	if (!use_dma)
		return false;

	if (FUNC1(usb3_ep, usb3_req)) {
		FUNC6(usb3);
		FUNC3(usb3);
		FUNC0(usb3_ep, usb3_req);
		FUNC2(usb3_ep);
		FUNC5(usb3);
		return true;
	}

	return false;
}