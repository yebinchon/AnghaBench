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
struct usb_request {int dummy; } ;
struct renesas_usb3_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3_request*) ; 
 struct renesas_usb3_request* FUNC1 (struct usb_request*) ; 

__attribute__((used)) static void FUNC2(struct usb_request *_req)
{
	struct renesas_usb3_request *usb3_req = FUNC1(_req);

	FUNC0(usb3_req);
}