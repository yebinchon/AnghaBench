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
struct usb_function {int dummy; } ;
struct f_uac2 {int /*<<< orphan*/  g_audio; scalar_t__ as_out_alt; scalar_t__ as_in_alt; } ;

/* Variables and functions */
 struct f_uac2* FUNC0 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct usb_function *fn)
{
	struct f_uac2 *uac2 = FUNC0(fn);

	uac2->as_in_alt = 0;
	uac2->as_out_alt = 0;
	FUNC1(&uac2->g_audio);
	FUNC2(&uac2->g_audio);
}