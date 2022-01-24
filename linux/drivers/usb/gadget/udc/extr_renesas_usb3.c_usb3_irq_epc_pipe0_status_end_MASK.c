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
struct renesas_usb3 {scalar_t__ test_mode; } ;

/* Variables and functions */
 struct renesas_usb3_ep* FUNC0 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 struct renesas_usb3_request* FUNC1 (struct renesas_usb3_ep*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3_ep*,struct renesas_usb3_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 

__attribute__((used)) static void FUNC4(struct renesas_usb3 *usb3)
{
	struct renesas_usb3_ep *usb3_ep = FUNC0(usb3, 0);
	struct renesas_usb3_request *usb3_req = FUNC1(usb3_ep);

	if (usb3_req)
		FUNC2(usb3_ep, usb3_req, 0);
	if (usb3->test_mode)
		FUNC3(usb3);
}