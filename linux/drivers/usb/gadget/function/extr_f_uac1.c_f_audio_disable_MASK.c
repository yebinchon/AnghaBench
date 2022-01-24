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
struct f_uac1 {int /*<<< orphan*/  g_audio; scalar_t__ as_in_alt; scalar_t__ as_out_alt; } ;

/* Variables and functions */
 struct f_uac1* FUNC0 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usb_function *f)
{
	struct f_uac1 *uac1 = FUNC0(f);

	uac1->as_out_alt = 0;
	uac1->as_in_alt = 0;

	FUNC1(&uac1->g_audio);
}